class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.154/caelum-cli-v0.1.154-aarch64-apple-darwin.tar.gz"
  sha256 "e60c64239182cbec4e04ba78d7aff50e98be4a4c6f231cddc7f9ef52151f7ba8"
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
