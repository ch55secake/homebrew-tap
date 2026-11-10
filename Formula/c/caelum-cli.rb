class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.45/caelum-cli-v0.1.45-aarch64-apple-darwin.tar.gz"
    sha256 "c0cbf3f2e59973294b70fa7c5f0666f21e8993ada9541650ae8c8a558c51569a"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.45/caelum-cli-v0.1.45-x86_64-apple-darwin.tar.gz"
    sha256 "340eedd7c2463e030f86010b0c7aea95dd3d14cb6ff02737e56bb5cce244a317"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
