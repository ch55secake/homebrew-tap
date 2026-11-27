class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.176/caelum-cli-v0.1.176-aarch64-apple-darwin.tar.gz"
  sha256 "315304161c16e0fb27f151263b960d499b8318dd2987c846067f5e343475faaf"
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
