class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.51/caelum-cli-v0.1.51-aarch64-apple-darwin.tar.gz"
    sha256 "e19defe41604fe1c372843c4610fcd010c3187a16d0cbeecec9b8d8e0261a8ca"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.51/caelum-cli-v0.1.51-x86_64-apple-darwin.tar.gz"
    sha256 "02f2def745c8682aaf4015e690a9332bf0a2bb24ba7e6c96cd678f636a4f9ba9"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
