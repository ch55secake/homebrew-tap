class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.84/caelum-cli-v0.1.84-aarch64-apple-darwin.tar.gz"
  sha256 "fb44690584f4755d349570b389e9f24a3a739c984b04d5c4e65ecf94827b4a4e"
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
