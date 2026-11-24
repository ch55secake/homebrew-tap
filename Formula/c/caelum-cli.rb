class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.134/caelum-cli-v0.1.134-aarch64-apple-darwin.tar.gz"
  sha256 "ec5ad75d67ea1305f56aaec847807fe84b1952ff5e2db0d94911e8875cab80ad"
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
