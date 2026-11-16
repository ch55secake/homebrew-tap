class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/caelurium/caelum/releases/download/v0.1.84/caelum-cli-v0.1.84-aarch64-apple-darwin.tar.gz"
    sha256 "fb44690584f4755d349570b389e9f24a3a739c984b04d5c4e65ecf94827b4a4e"
  else
    url "https://github.com/caelurium/caelum/releases/download/v0.1.84/caelum-cli-v0.1.84-x86_64-apple-darwin.tar.gz"
    sha256 "5d13448242304f1230a21b853f71b4d9c9b9910b628aa16f25d39b76250321d8"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
