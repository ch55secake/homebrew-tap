class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.133/caelum-cli-v0.1.133-aarch64-apple-darwin.tar.gz"
  sha256 "494ecd7bd4fb13728af6fca81745ce9740cfecbe4a4be76aade4182f78151d11"
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
