class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.129/caelum-cli-v0.1.129-aarch64-apple-darwin.tar.gz"
  sha256 "8a02fffd7030fcdedcdd829c7e9b1a68a61193efb9eaab8b64d618868b2ef9a4"
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
