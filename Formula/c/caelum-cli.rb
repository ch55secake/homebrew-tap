class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.167/caelum-cli-v0.1.167-aarch64-apple-darwin.tar.gz"
  sha256 "c750211a3a21d654d5bc6f1247fdf35c464e0329e8848a99acfb3a96ff97379f"
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
