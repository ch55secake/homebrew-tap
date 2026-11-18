class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.104/caelum-cli-v0.1.104-aarch64-apple-darwin.tar.gz"
  sha256 "1328d0ce3b46d1c18223330252f214ab6fdd0789222cab54caf8d6177567f0ed"
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
