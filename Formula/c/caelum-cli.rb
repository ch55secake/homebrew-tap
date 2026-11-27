class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.192/caelum-cli-v0.1.192-aarch64-apple-darwin.tar.gz"
  sha256 "fb2ecd72c4e0a875a3075c107f51741e9ef6d42cdf2e4d5822edab9a939dd67a"
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
