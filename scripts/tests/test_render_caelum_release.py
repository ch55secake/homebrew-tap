import hashlib
import subprocess
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
RENDERER = ROOT / "scripts/render_caelum_release.py"
ASSETS = (
    "caelum-cli-v0.1.0-aarch64-apple-darwin.tar.gz",
    "Caelum-v0.1.0-aarch64.dmg",
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

        self.assertIn(f"releases/download/v0.1.0/{ASSETS[0]}", formula)
        for package in (formula, cask):
            self.assertIn("depends_on arch: :arm64", package)
            self.assertNotIn("x86_64", package)
        self.assertIn('version "0.1.0"', cask)
        self.assertIn("depends_on macos: :ventura", cask)
        self.assertIn("strategy :github_latest", cask)
        self.assertIn('license "MIT"', formula)
        self.assertIn('cask "caelum"', cask)
        self.assertNotIn("$AARCH64", formula + cask)
        self.assertIn("brew install --cask ch55secake/tap/caelum", readme)
        self.assertIn("| `caelum-cli` |", readme)

    def test_historical_multiarch_checksums_still_render_apple_silicon_packages(self) -> None:
        old_assets = ("caelum-cli-v0.1.0-x86_64-apple-darwin.tar.gz", "Caelum-v0.1.0-x86_64.dmg")
        with self.checksums.open("a") as checksums:
            for asset in old_assets:
                checksums.write(f"{hashlib.sha256(asset.encode()).hexdigest()}  {asset}\n")
        result = self.run_renderer()
        self.assertEqual(result.returncode, 0, result.stderr)
        for package in ("Formula/c/caelum-cli.rb", "Casks/caelum.rb"):
            content = (self.tap / package).read_text()
            self.assertIn("depends_on arch: :arm64", content)
            self.assertNotIn("x86_64", content)

    def test_repeated_release_updates_are_idempotent(self) -> None:
        first = self.run_renderer()
        second = self.run_renderer()

        self.assertEqual(first.returncode, 0, first.stderr)
        self.assertEqual(second.returncode, 0, second.stderr)
        readme = (self.tap / "README.md").read_text()
        self.assertEqual(readme.count("<!-- BEGIN CAELUM PACKAGES -->"), 1)

    def test_repository_transfer_updates_the_existing_formula_row(self) -> None:
        readme_path = self.tap / "README.md"
        readme_path.write_text(
            readme_path.read_text()
            + "| `caelum-cli` | Previous description | "
            "[previous-owner/caelum](https://github.com/previous-owner/caelum) |\n"
        )

        for _ in range(2):
            result = self.run_renderer()
            self.assertEqual(result.returncode, 0, result.stderr)

        readme = readme_path.read_text()
        self.assertEqual(readme.count("| `caelum-cli` |"), 1)
        self.assertIn("[caelurium/caelum](https://github.com/caelurium/caelum)", readme)
        self.assertNotIn("previous-owner/caelum", readme)

    def test_missing_checksum_fails_without_writing_package_files(self) -> None:
        self.checksums.write_text("")

        result = self.run_renderer()

        self.assertNotEqual(result.returncode, 0)
        self.assertIn(ASSETS[0], result.stderr)
        self.assertFalse((self.tap / "Formula/c/caelum-cli.rb").exists())


if __name__ == "__main__":
    unittest.main()
