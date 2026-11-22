class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.123/caelum-cli-v0.1.123-aarch64-apple-darwin.tar.gz"
  sha256 "ad9d4703e24c681eeb224a1ab51fdabb40dc5d3594886a3f3cdaa2d44265371f"
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
