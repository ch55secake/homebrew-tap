class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.185/caelum-cli-v0.1.185-aarch64-apple-darwin.tar.gz"
  sha256 "b56346c1522713e8099e9edca08a4ed0ebb61f7e6eb025233a05fc95fc26efe9"
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
