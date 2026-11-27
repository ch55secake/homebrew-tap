class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.190/caelum-cli-v0.1.190-aarch64-apple-darwin.tar.gz"
  sha256 "ad4f7c47fe662eb95216bbdd39c261b83a4d67ed0c4b302a3d32e83ead4186e8"
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
