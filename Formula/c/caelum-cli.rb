class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.165/caelum-cli-v0.1.165-aarch64-apple-darwin.tar.gz"
  sha256 "74c1a212f87db1170e53a8a13bb5ac1666492f99799d0dab41726a763ebb047c"
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
