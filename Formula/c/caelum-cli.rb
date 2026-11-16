class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.95/caelum-cli-v0.1.95-aarch64-apple-darwin.tar.gz"
  sha256 "7809b3447ed6ee1ca6ea73bf362b82049c80125bfc6c8d7916404ae315435470"
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
