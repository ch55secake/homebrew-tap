class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.170/caelum-cli-v0.1.170-aarch64-apple-darwin.tar.gz"
  sha256 "0b147c951cbfe250ac16dc603cc72941c1f0eebfa738065ce03ff0e7c5e9c43f"
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
