class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.198/caelum-cli-v0.1.198-aarch64-apple-darwin.tar.gz"
  sha256 "7123107ec889007fcfcf3d9731c5aa527e4dc586573ed694b9ad66a8599b70f3"
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
