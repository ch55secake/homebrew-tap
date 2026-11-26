class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.148/caelum-cli-v0.1.148-aarch64-apple-darwin.tar.gz"
  sha256 "67720c4eaf8e61a1432765bc7a6077ed1359cb4adffa8f1b4111b693a114955f"
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
