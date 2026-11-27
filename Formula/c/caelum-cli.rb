class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.171/caelum-cli-v0.1.171-aarch64-apple-darwin.tar.gz"
  sha256 "c01d40dc3a0d22a66b4a85d20bb49f4c5e15f476773929a9d8cb8ecd04c2c6ac"
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
