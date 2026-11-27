class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.195/caelum-cli-v0.1.195-aarch64-apple-darwin.tar.gz"
  sha256 "72a457b62e9a151f14f24683389ff6a049c5f83066d8895fd370af52344ba31c"
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
