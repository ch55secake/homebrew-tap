class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.138/caelum-cli-v0.1.138-aarch64-apple-darwin.tar.gz"
  sha256 "132e6c9871e53418fdc72d02f78fead4f2cbcca0714649a71c205cac863ab576"
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
