class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.128/caelum-cli-v0.1.128-aarch64-apple-darwin.tar.gz"
  sha256 "bedd9f2af94fa58cc6e1d9beea29a10db6292dacb28986dbbdb9ebf7b4f16ac0"
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
