class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.147/caelum-cli-v0.1.147-aarch64-apple-darwin.tar.gz"
  sha256 "9fde58b6ca564efae8f8c4880eb9dbb9b5a623427be3deaf1b9baedb2bfbe668"
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
