class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.178/caelum-cli-v0.1.178-aarch64-apple-darwin.tar.gz"
  sha256 "4c78d57946f2286a4c2b3471cc2c0844d6e4fc49f8655de859153936b2fb8a45"
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
