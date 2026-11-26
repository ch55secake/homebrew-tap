class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.146/caelum-cli-v0.1.146-aarch64-apple-darwin.tar.gz"
  sha256 "035183fb9d890ede85e7e86a2dd88927327226a212cbba8f5ec03cc747120cb0"
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
