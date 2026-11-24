#!/usr/bin/env python3
"""Update the Vela cask from the latest published GitHub Release."""

from __future__ import annotations

import json
import os
import re
import sys
from pathlib import Path
from urllib.request import Request, urlopen


ROOT = Path(__file__).resolve().parents[1]
CASK_PATH = ROOT / "Casks/vela.rb"
RELEASE_URL = "https://api.github.com/repos/ch55secake/vela/releases/latest"
ASSET_NAMES = {
    "arm": "Vela-arm64.zip",
    "intel": "Vela-x86_64.zip",
}
TAG_PATTERN = re.compile(r"^v(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)$")
VERSION_PATTERN = re.compile(r'(?m)^  version "(\d+\.\d+\.\d+)"$')
SHA_PATTERN = re.compile(
    r'(?m)^  sha256 arm:[ \t]+"(?P<arm>[0-9a-f]{64})",\n'
    r'[ \t]+intel: "(?P<intel>[0-9a-f]{64})"$'
)


def release_details(release: dict[str, object]) -> tuple[str, dict[str, str]]:
    tag_name = release.get("tag_name")
    if not isinstance(tag_name, str) or (match := TAG_PATTERN.fullmatch(tag_name)) is None:
        raise ValueError(f"invalid Vela release tag: {tag_name!r}")

    version = ".".join(match.groups())
    assets = release.get("assets")
    if not isinstance(assets, list):
        raise ValueError("release has no asset list")

    assets_by_name = {
        asset.get("name"): asset
        for asset in assets
        if isinstance(asset, dict) and isinstance(asset.get("name"), str)
    }

    digests: dict[str, str] = {}
    for arch, asset_name in ASSET_NAMES.items():
        asset = assets_by_name.get(asset_name)
        digest = asset.get("digest") if isinstance(asset, dict) else None
        if not isinstance(digest, str) or not re.fullmatch(r"sha256:[0-9a-fA-F]{64}", digest):
            raise ValueError(f"release is missing a valid SHA-256 digest for {asset_name}")
        digests[arch] = digest.removeprefix("sha256:").lower()

    return version, digests


def update_cask_text(cask_text: str, release: dict[str, object]) -> tuple[str, str, bool]:
    version, digests = release_details(release)
    version_match = VERSION_PATTERN.search(cask_text)
    sha_match = SHA_PATTERN.search(cask_text)
    if version_match is None or sha_match is None:
        raise ValueError("Casks/vela.rb does not match the expected version/checksum format")

    current_version = version_match.group(1)
    current_tuple = tuple(int(part) for part in current_version.split("."))
    latest_tuple = tuple(int(part) for part in version.split("."))
    current_digests = {
        "arm": sha_match.group("arm"),
        "intel": sha_match.group("intel"),
    }

    if latest_tuple < current_tuple:
        return cask_text, version, False
    if latest_tuple == current_tuple:
        if digests != current_digests:
            raise ValueError(f"Vela {version} release asset digests changed without a version bump")
        return cask_text, version, False

    updated_text, version_count = VERSION_PATTERN.subn(
        f'  version "{version}"',
        cask_text,
        count=1,
    )
    updated_text, sha_count = SHA_PATTERN.subn(
        f'  sha256 arm:   "{digests["arm"]}",\n'
        f'         intel: "{digests["intel"]}"',
        updated_text,
        count=1,
    )
    if version_count != 1 or sha_count != 1:
        raise ValueError("could not update the Vela cask version and checksums")

    return updated_text, version, True


def write_github_outputs(version: str, changed: bool) -> None:
    output_path = os.environ.get("GITHUB_OUTPUT")
    if output_path is None:
        return

    with Path(output_path).open("a", encoding="utf-8") as output:
        output.write(f"version={version}\n")
        output.write(f"changed={'true' if changed else 'false'}\n")


def latest_release_request() -> Request:
    headers = {
        "Accept": "application/vnd.github+json",
        "User-Agent": "homebrew-tap-vela-updater",
        "X-GitHub-Api-Version": "2022-11-28",
    }
    token = os.environ.get("GH_TOKEN") or os.environ.get("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"Bearer {token}"

    return Request(RELEASE_URL, headers=headers)


def fetch_latest_release() -> dict[str, object]:
    with urlopen(latest_release_request(), timeout=30) as response:
        payload = json.load(response)
    if not isinstance(payload, dict):
        raise ValueError("GitHub returned an invalid release response")
    return payload


def main() -> None:
    try:
        release = fetch_latest_release()
        current_text = CASK_PATH.read_text(encoding="utf-8")
        updated_text, version, changed = update_cask_text(current_text, release)
        if changed:
            CASK_PATH.write_text(updated_text, encoding="utf-8")
            print(f"Updated Vela cask to {version}")
        else:
            print(f"Vela cask is already current (latest release: {version})")
        write_github_outputs(version, changed)
    except (OSError, ValueError) as error:
        print(f"Could not update Vela cask: {error}", file=sys.stderr)
        raise SystemExit(1) from error


if __name__ == "__main__":
    main()
