class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.174/caelum-cli-v0.1.174-aarch64-apple-darwin.tar.gz"
  sha256 "f88ff8d459dc8a9caf5ccb1564e3fa0e98f3a1bd0538d1f12861f195e9401a75"
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
