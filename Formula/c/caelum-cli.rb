class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.91/caelum-cli-v0.1.91-aarch64-apple-darwin.tar.gz"
  sha256 "c2b8e1bd69744b8d89af535ee02afc7212b94a08988c3b3738d5fb928ac915b5"
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
