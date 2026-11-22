class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.117/caelum-cli-v0.1.117-aarch64-apple-darwin.tar.gz"
  sha256 "2b6d7758159c0de514cfdb491165ac3f498251a2b0df97a1bb6c83a588668443"
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
