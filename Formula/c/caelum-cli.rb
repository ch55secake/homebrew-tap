class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.115/caelum-cli-v0.1.115-aarch64-apple-darwin.tar.gz"
  sha256 "569b07ba43abbca8e9caf8a9545e856a28559d40382abd896d6e5a6bfbd4e006"
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
