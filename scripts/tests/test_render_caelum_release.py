import hashlib
import subprocess
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
RENDERER = ROOT / "scripts/render_caelum_release.py"
ASSETS = (
    "caelum-cli-v0.1.0-aarch64-apple-darwin.tar.gz",
    "caelum-cli-v0.1.0-x86_64-apple-darwin.tar.gz",
    "Caelum-v0.1.0-aarch64.dmg",
    "Caelum-v0.1.0-x86_64.dmg",
)


class RenderCaelumReleaseTests(unittest.TestCase):
    def setUp(self) -> None:
        self.temporary_directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary_directory.cleanup)
        self.root = Path(self.temporary_directory.name)
        self.tap = self.root / "tap"
        (self.tap / "Formula").mkdir(parents=True)
        (self.tap / "README.md").write_text(
            "# tap\n\n## Formulae\n\n| Formula | Description | Upstream |\n| --- | --- | --- |\n"
        )
        self.checksums = self.root / "SHA256SUMS"
        self.checksums.write_text(
            "".join(f"{hashlib.sha256(asset.encode()).hexdigest()}  ./{asset}\n" for asset in ASSETS)
        )

    def run_renderer(self) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            ["python3", str(RENDERER), "0.1.0", str(self.checksums), str(self.tap)],
            capture_output=True,
            check=False,
            text=True,
        )

    def test_renders_formula_cask_and_tap_docs(self) -> None:
        result = self.run_renderer()

        self.assertEqual(result.returncode, 0, result.stderr)
        formula = (self.tap / "Formula/c/caelum-cli.rb").read_text()
        cask = (self.tap / "Casks/caelum.rb").read_text()
        readme = (self.tap / "README.md").read_text()

        self.assertIn('version "0.1.0"', formula)
        self.assertIn('license "MIT"', formula)
        self.assertIn('cask "caelum"', cask)
        self.assertNotIn("$AARCH64", formula + cask)
        self.assertIn("brew install --cask ch55secake/tap/caelum", readme)
        self.assertIn("| `caelum-cli` |", readme)

    def test_repeated_release_updates_are_idempotent(self) -> None:
        first = self.run_renderer()
        second = self.run_renderer()

        self.assertEqual(first.returncode, 0, first.stderr)
        self.assertEqual(second.returncode, 0, second.stderr)
        readme = (self.tap / "README.md").read_text()
        self.assertEqual(readme.count("<!-- BEGIN CAELUM PACKAGES -->"), 1)

    def test_missing_checksum_fails_without_writing_package_files(self) -> None:
        self.checksums.write_text("")

        result = self.run_renderer()

        self.assertNotEqual(result.returncode, 0)
        self.assertIn(ASSETS[0], result.stderr)
        self.assertFalse((self.tap / "Formula/c/caelum-cli.rb").exists())


if __name__ == "__main__":
    unittest.main()
