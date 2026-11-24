class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.141/caelum-cli-v0.1.141-aarch64-apple-darwin.tar.gz"
  sha256 "7f81c9bd41d0cca739af6665c1ff4c8f5792e658de887b5b81ca5b145fbdbebd"
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
