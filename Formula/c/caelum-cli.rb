class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.162/caelum-cli-v0.1.162-aarch64-apple-darwin.tar.gz"
  sha256 "4a625006987cf2422934491c820edf9caba3eb7fb6f6627aab8be7d693301110"
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
