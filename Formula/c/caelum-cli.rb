class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.159/caelum-cli-v0.1.159-aarch64-apple-darwin.tar.gz"
  sha256 "8feedbf4b40578cbe1b841f8fe3c6f466c3155c5448b7af4add527086fb85e34"
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
