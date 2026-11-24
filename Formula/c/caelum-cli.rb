class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.132/caelum-cli-v0.1.132-aarch64-apple-darwin.tar.gz"
  sha256 "1ce67745b659739f884a4d19ff69b9df3e0af2c20ebd72a2399354ad2e60ff29"
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
