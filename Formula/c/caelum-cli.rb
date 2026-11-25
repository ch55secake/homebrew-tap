class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.145/caelum-cli-v0.1.145-aarch64-apple-darwin.tar.gz"
  sha256 "5e16d7281807912f08e3d51b987865a30bede0f290fde0dc0618d911fe9f3be4"
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
