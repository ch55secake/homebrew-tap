class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.96/caelum-cli-v0.1.96-aarch64-apple-darwin.tar.gz"
  sha256 "cfb87f82fe472a70d93c5f20f41631b852fb50ab5e78e38b8369528269456327"
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
