class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.184/caelum-cli-v0.1.184-aarch64-apple-darwin.tar.gz"
  sha256 "49c4d76ff8c26621c68faede7f0be1093789103eadb422b0213930f647478021"
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
