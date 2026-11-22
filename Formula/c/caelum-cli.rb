class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.126/caelum-cli-v0.1.126-aarch64-apple-darwin.tar.gz"
  sha256 "cc0cc152650671d4118d64ebd21dca9250c9c00d227a84a3795fe4f3762b4313"
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
