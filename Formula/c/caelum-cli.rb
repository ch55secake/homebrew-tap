class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.107/caelum-cli-v0.1.107-aarch64-apple-darwin.tar.gz"
  sha256 "6adcfc66130513d7376d94b28fff1a963471ffc9afa7dd9df994d86bfb81ecc3"
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
