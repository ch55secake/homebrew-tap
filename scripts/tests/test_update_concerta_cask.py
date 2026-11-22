import os
import sys
import unittest
from pathlib import Path
from unittest.mock import patch


ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "scripts"))

import update_concerta_cask


OLD_ARM_SHA = "a" * 64
OLD_INTEL_SHA = "b" * 64
NEW_ARM_SHA = "c" * 64
NEW_INTEL_SHA = "d" * 64
CASK = f'''cask "concerta" do
  version "0.1.0"
  sha256 arm:   "{OLD_ARM_SHA}",
         intel: "{OLD_INTEL_SHA}"
end
'''


def release(tag: str, arm_sha: str = NEW_ARM_SHA, intel_sha: str = NEW_INTEL_SHA) -> dict[str, object]:
    return {
        "tag_name": tag,
        "assets": [
            {"name": "Concerta-aarch64.zip", "digest": f"sha256:{arm_sha}"},
            {"name": "Concerta-x86_64.zip", "digest": f"sha256:{intel_sha}"},
        ],
    }


class UpdateConcertaCaskTests(unittest.TestCase):
    def test_latest_release_request_uses_workflow_token(self) -> None:
        with patch.dict(os.environ, {"GH_TOKEN": "test-token"}, clear=True):
            request = update_concerta_cask.latest_release_request()

        self.assertEqual(request.get_header("Authorization"), "Bearer test-token")

    def test_updates_version_and_both_architecture_checksums(self) -> None:
        updated, version, changed = update_concerta_cask.update_cask_text(CASK, release("v0.1.1"))

        self.assertTrue(changed)
        self.assertEqual(version, "0.1.1")
        self.assertIn('version "0.1.1"', updated)
        self.assertIn(f'arm:   "{NEW_ARM_SHA}"', updated)
        self.assertIn(f'intel: "{NEW_INTEL_SHA}"', updated)

    def test_same_release_is_idempotent(self) -> None:
        current = CASK.replace("0.1.0", "0.1.1").replace(OLD_ARM_SHA, NEW_ARM_SHA).replace(
            OLD_INTEL_SHA, NEW_INTEL_SHA
        )

        updated, version, changed = update_concerta_cask.update_cask_text(current, release("v0.1.1"))

        self.assertFalse(changed)
        self.assertEqual(version, "0.1.1")
        self.assertEqual(updated, current)

    def test_does_not_downgrade_the_cask(self) -> None:
        current = CASK.replace("0.1.0", "0.2.0")

        updated, version, changed = update_concerta_cask.update_cask_text(current, release("v0.1.1"))

        self.assertFalse(changed)
        self.assertEqual(version, "0.1.1")
        self.assertEqual(updated, current)

    def test_rejects_missing_architecture_asset_digest(self) -> None:
        incomplete_release = release("v0.1.1")
        incomplete_release["assets"] = incomplete_release["assets"][:1]

        with self.assertRaisesRegex(ValueError, "Concerta-x86_64.zip"):
            update_concerta_cask.update_cask_text(CASK, incomplete_release)

    def test_rejects_digest_changes_without_version_bump(self) -> None:
        with self.assertRaisesRegex(ValueError, "changed without a version bump"):
            update_concerta_cask.update_cask_text(CASK, release("v0.1.0"))


if __name__ == "__main__":
    unittest.main()
