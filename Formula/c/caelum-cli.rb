class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.103/caelum-cli-v0.1.103-aarch64-apple-darwin.tar.gz"
  sha256 "112c3d9b7fc810e291d8a99cb0b7da834096acfe6e5a10a9f700ae6279f33d4c"
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
