class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.149/caelum-cli-v0.1.149-aarch64-apple-darwin.tar.gz"
  sha256 "b4fe40ccad3235fb23de899cd453360890ff22e2c8b4ad050c0d9b23602e3295"
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
