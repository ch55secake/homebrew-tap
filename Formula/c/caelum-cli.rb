class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.105/caelum-cli-v0.1.105-aarch64-apple-darwin.tar.gz"
  sha256 "e1655ef409010f9f0830af63d9d6a7d6d6bacb2030d31a65052a439c2f8fad57"
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
