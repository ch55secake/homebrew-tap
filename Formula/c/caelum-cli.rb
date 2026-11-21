class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.113/caelum-cli-v0.1.113-aarch64-apple-darwin.tar.gz"
  sha256 "223d1e1af6b8095f4f386a43cbbbaf94c596b14d1ea7ca22079f380ef4d33cd7"
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
