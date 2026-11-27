class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.187/caelum-cli-v0.1.187-aarch64-apple-darwin.tar.gz"
  sha256 "4dadc9a47aa3f3497bda736f5bf32e0d2479cd0bc04d253a0079609176f68493"
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
