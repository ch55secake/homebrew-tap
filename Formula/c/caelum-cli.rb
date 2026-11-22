class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.118/caelum-cli-v0.1.118-aarch64-apple-darwin.tar.gz"
  sha256 "894f06aaf554e055a871e43813d01297cbaabb50078d4c5876adc03997033e5a"
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
