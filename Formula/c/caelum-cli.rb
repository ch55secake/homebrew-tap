class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.127/caelum-cli-v0.1.127-aarch64-apple-darwin.tar.gz"
  sha256 "71752519a4128c03001a4812c7d46403820eea088d6cbb722cdc8a8f7cf85294"
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
