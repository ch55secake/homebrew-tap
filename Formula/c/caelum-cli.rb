class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.173/caelum-cli-v0.1.173-aarch64-apple-darwin.tar.gz"
  sha256 "afbd26cd0c96751748612f84d158daef5aaf49931e486b9528b00f62976d88ba"
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
