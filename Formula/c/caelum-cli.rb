class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.197/caelum-cli-v0.1.197-aarch64-apple-darwin.tar.gz"
  sha256 "e8e84529657920042b2f499e8b01a1b1e9ebf618a5d23fcbc6641f6478bc435d"
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
