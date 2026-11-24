class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.139/caelum-cli-v0.1.139-aarch64-apple-darwin.tar.gz"
  sha256 "94b35d7ce49ab4008f6f174bfcaf6d2712c6464dd6b73212baaa7dba6954172f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
