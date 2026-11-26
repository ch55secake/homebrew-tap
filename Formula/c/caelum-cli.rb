class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.156/caelum-cli-v0.1.156-aarch64-apple-darwin.tar.gz"
  sha256 "5e5e17d3cc3cb2f96e646b3c5682cd2f8157493826e470791732f27b916692c5"
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
