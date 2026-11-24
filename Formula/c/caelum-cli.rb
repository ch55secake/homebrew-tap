class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.135/caelum-cli-v0.1.135-aarch64-apple-darwin.tar.gz"
  sha256 "e6c364183dda27cf12f57c288743ca6ac6b6d459c69554e0a7b42a7e543c6be9"
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
