class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.199/caelum-cli-v0.1.199-aarch64-apple-darwin.tar.gz"
  sha256 "c606e8e937afb41eefbd6bd63de1098bb39bb31f4edf366ef558ed270a0cee13"
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
