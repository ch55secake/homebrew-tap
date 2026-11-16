class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.92/caelum-cli-v0.1.92-aarch64-apple-darwin.tar.gz"
  sha256 "c9c71cec3910dd9b590574f6f733220854682a476e8da01d792e33392a9c1fcd"
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
