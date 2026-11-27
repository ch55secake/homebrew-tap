class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.175/caelum-cli-v0.1.175-aarch64-apple-darwin.tar.gz"
  sha256 "51154bdf902f59dffc94ac4da3dbadf381a7bb2efa400826743fc6628fb523aa"
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
