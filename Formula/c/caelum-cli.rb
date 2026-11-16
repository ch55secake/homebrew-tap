class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.90/caelum-cli-v0.1.90-aarch64-apple-darwin.tar.gz"
  sha256 "df8f6940b39326f1ba42861dd02d9c139b9c01d2b0e7bbcdef9c42183a9ce5c0"
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
