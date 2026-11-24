class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.130/caelum-cli-v0.1.130-aarch64-apple-darwin.tar.gz"
  sha256 "f23ca4d028682c12cb5e9a87b09caa0e317d08d77c72510bda74b56535e6469f"
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
