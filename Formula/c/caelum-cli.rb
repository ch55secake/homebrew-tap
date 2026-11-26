class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.161/caelum-cli-v0.1.161-aarch64-apple-darwin.tar.gz"
  sha256 "290817b575a0f5004bcd41490c85042cd7790313e1066d1eef4d1d0896bfb2a7"
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
