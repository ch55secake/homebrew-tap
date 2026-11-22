class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.121/caelum-cli-v0.1.121-aarch64-apple-darwin.tar.gz"
  sha256 "6ad9619eff72032a805de5fcfb459074a990eff6ccb3ccdd7e9b8d82c49e4ce8"
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
