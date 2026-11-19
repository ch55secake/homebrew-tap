class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.108/caelum-cli-v0.1.108-aarch64-apple-darwin.tar.gz"
  sha256 "5dbe09e419169daf31bfd30bd6188725adf6cb829360ca5621634530b1ed7840"
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
