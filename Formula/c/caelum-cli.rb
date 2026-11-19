class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.110/caelum-cli-v0.1.110-aarch64-apple-darwin.tar.gz"
  sha256 "c6051cdb7f8dbe5a35c3d6b6bc6ca961b120d75ad2dc7075ae5e6e6dab6ebb39"
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
