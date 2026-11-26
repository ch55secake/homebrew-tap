class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.158/caelum-cli-v0.1.158-aarch64-apple-darwin.tar.gz"
  sha256 "58683a49bded66cf299afa31e21f543b08fbb41ea488456733a085e9a041863e"
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
