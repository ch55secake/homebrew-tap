#!/usr/bin/env python3
"""Render Caelum's Homebrew formula and cask from published release assets."""

from __future__ import annotations

import re
import sys
from pathlib import Path
from string import Template


ROOT = Path(__file__).resolve().parents[1]
ASSETS = {
    "AARCH64_CLI_SHA256": "caelum-cli-v{version}-aarch64-apple-darwin.tar.gz",
    "X86_64_CLI_SHA256": "caelum-cli-v{version}-x86_64-apple-darwin.tar.gz",
    "AARCH64_DMG_SHA256": "Caelum-v{version}-aarch64.dmg",
    "X86_64_DMG_SHA256": "Caelum-v{version}-x86_64.dmg",
}
README_MARKERS = ("<!-- BEGIN CAELUM PACKAGES -->", "<!-- END CAELUM PACKAGES -->")


def read_checksums(path: Path) -> dict[str, str]:
    checksums: dict[str, str] = {}
    for line in path.read_text().splitlines():
        if not line.strip():
            continue
        fields = line.split(maxsplit=1)
        if len(fields) != 2:
            raise SystemExit(f"invalid checksum entry: {line}")
        digest, filename = fields
        checksums[Path(filename.lstrip("* ")).name] = digest.lower()
    return checksums


def render(template: Path, substitutions: dict[str, str]) -> str:
    return Template(template.read_text()).substitute(substitutions)


def update_readme(tap: Path) -> None:
    readme = tap / "README.md"
    content = readme.read_text()
    start, end = README_MARKERS
    section = f"""{start}
## Caelum

Install the desktop app and standalone CLI separately:

```sh
brew install --cask ch55secake/tap/caelum
brew install ch55secake/tap/caelum-cli
```
{end}"""
    if start in content and end in content:
        before, remainder = content.split(start, maxsplit=1)
        _, after = remainder.split(end, maxsplit=1)
        content = before.rstrip() + "\n\n" + section + after
    else:
        formulae = "## Formulae"
        if formulae not in content:
            raise SystemExit(f"could not find {formulae!r} section in {readme}")
        content = content.replace(formulae, section + "\n\n" + formulae, 1)

    formula_row = (
        "| `caelum-cli` | Command-line interface for the Caelum coding workspace | "
        "[ch55secake/caelum](https://github.com/ch55secake/caelum) |"
    )
    if formula_row not in content:
        lines = content.splitlines()
        formulae_index = next((i for i, line in enumerate(lines) if line == "## Formulae"), None)
        if formulae_index is None:
            raise SystemExit(f"could not find {formulae!r} section in {readme}")
        separator_index = next(
            (i for i in range(formulae_index + 1, len(lines)) if lines[i].startswith("| ---")),
            None,
        )
        if separator_index is None:
            raise SystemExit(f"could not find formula table in {readme}")
        lines.insert(separator_index + 1, formula_row)
        content = "\n".join(lines) + "\n"
    readme.write_text(content)


def main() -> None:
    if len(sys.argv) != 4:
        raise SystemExit(f"usage: {sys.argv[0]} VERSION SHA256SUMS TAP_CHECKOUT")

    version, checksum_file, tap_checkout = sys.argv[1:]
    if not re.fullmatch(r"\d+\.\d+\.\d+(?:-[0-9A-Za-z.-]+)?", version):
        raise SystemExit(f"invalid release version: {version}")

    checksums = read_checksums(Path(checksum_file))
    substitutions = {"VERSION": version}
    for key, asset_pattern in ASSETS.items():
        asset = asset_pattern.format(version=version)
        digest = checksums.get(asset)
        if digest is None or not re.fullmatch(r"[0-9a-f]{64}", digest):
            raise SystemExit(f"missing or invalid SHA-256 for release asset: {asset}")
        substitutions[key] = digest

    tap = Path(tap_checkout)
    formula = tap / "Formula/c/caelum-cli.rb"
    cask = tap / "Casks/caelum.rb"
    formula.parent.mkdir(parents=True, exist_ok=True)
    cask.parent.mkdir(parents=True, exist_ok=True)
    formula.write_text(render(ROOT / "templates/caelum-cli.rb.in", substitutions))
    cask.write_text(render(ROOT / "templates/caelum.rb.in", substitutions))
    update_readme(tap)

    print(f"Rendered {formula} and {cask} for v{version}")


if __name__ == "__main__":
    main()
