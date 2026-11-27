class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.191/caelum-cli-v0.1.191-aarch64-apple-darwin.tar.gz"
  sha256 "d70b1624225b7adc22310c457d27cc5e30ad4815a3fb0cfed58038270b7f6e9e"
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
