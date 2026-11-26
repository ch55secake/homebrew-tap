class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.160/caelum-cli-v0.1.160-aarch64-apple-darwin.tar.gz"
  sha256 "afefe87eee12c7e665024c3a4ee374fd6489abee2533bcb99d1e690852044b8a"
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
