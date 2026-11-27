class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.183/caelum-cli-v0.1.183-aarch64-apple-darwin.tar.gz"
  sha256 "db91e1f32ec54a53ca1eb1403a40834521379203b0e515c0d55c6cea307bc054"
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
