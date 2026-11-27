class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.164/caelum-cli-v0.1.164-aarch64-apple-darwin.tar.gz"
  sha256 "4ddddaa749bdef50602f2275b9b8c242aa81f3c8d83b77f09405f7c95fbb7af4"
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
