class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.196/caelum-cli-v0.1.196-aarch64-apple-darwin.tar.gz"
  sha256 "180f456a8029ae933f16e33a5572dd80c973f6fea4655bec8488d799f9e7b1ed"
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
