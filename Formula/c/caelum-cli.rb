class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.168/caelum-cli-v0.1.168-aarch64-apple-darwin.tar.gz"
  sha256 "ec807f5705223ea8091587b17f2acf9db41cd644ab90d39647f4eb196994f322"
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
