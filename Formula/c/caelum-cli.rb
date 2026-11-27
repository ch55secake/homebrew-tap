class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.172/caelum-cli-v0.1.172-aarch64-apple-darwin.tar.gz"
  sha256 "6fc886b831c1b61e5a838630b15d80d52a1f0d4708a28eefea0f117aa13f8602"
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
