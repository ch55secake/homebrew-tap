class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.157/caelum-cli-v0.1.157-aarch64-apple-darwin.tar.gz"
  sha256 "3afa6d673c8a0c25be52345ef344049c57a833d2fa2143f06b103daa3b7b2465"
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
