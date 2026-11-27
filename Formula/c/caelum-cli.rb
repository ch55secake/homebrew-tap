class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.193/caelum-cli-v0.1.193-aarch64-apple-darwin.tar.gz"
  sha256 "52cf6f277035c71665ae59532ee7466749a454b7331797bc06e9b0dd03c64f25"
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
