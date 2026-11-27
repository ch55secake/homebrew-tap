class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.189/caelum-cli-v0.1.189-aarch64-apple-darwin.tar.gz"
  sha256 "bf1b96f00b707df4033fcf9ad5330e4b90a8a6f74efdad051c36f0008ac8568b"
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
