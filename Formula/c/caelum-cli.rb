class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.186/caelum-cli-v0.1.186-aarch64-apple-darwin.tar.gz"
  sha256 "3607faede54a342dccd2838462b0b5e95e3a3de7497763c141d67c26042fe530"
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
