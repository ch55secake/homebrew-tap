class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.111/caelum-cli-v0.1.111-aarch64-apple-darwin.tar.gz"
  sha256 "9a1ba7f87df55c946cdbc0521bd3af2ea65788adc1379c4d614867ff15fb34a9"
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
