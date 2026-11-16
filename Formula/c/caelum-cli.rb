class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.99/caelum-cli-v0.1.99-aarch64-apple-darwin.tar.gz"
  sha256 "1813a0ae5ff6216a32c537810819d50e041504fe203b660938243faf22d6febb"
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
