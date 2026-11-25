class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.144/caelum-cli-v0.1.144-aarch64-apple-darwin.tar.gz"
  sha256 "c2abef38c4f425c916ce951a6b5d28f17f81368192435ff6fdb8f44c02a5e5db"
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
