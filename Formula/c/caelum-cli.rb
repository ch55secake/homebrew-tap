class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.181/caelum-cli-v0.1.181-aarch64-apple-darwin.tar.gz"
  sha256 "049be879ff7c795826edc376ecbc04828a4bfec3019974938f81e899481b58d7"
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
