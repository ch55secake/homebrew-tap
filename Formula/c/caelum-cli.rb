class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.152/caelum-cli-v0.1.152-aarch64-apple-darwin.tar.gz"
  sha256 "6929493327e7ce154c6518e26e0d02f2dcdcbde552b568dce6dab33782acd359"
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
