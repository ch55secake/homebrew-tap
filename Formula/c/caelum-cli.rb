class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.106/caelum-cli-v0.1.106-aarch64-apple-darwin.tar.gz"
  sha256 "e318748552e69e4700f643089e3f8230fc6ee7a6861925c3a73c0764b19c9850"
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
