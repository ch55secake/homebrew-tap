class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.131/caelum-cli-v0.1.131-aarch64-apple-darwin.tar.gz"
  sha256 "ca1d19d9dc200c8e7ae182c083059572d05207091e667e160842723d1cad3b65"
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
