class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.61/caelum-cli-v0.1.61-aarch64-apple-darwin.tar.gz"
    sha256 "c065b5e7d938e14e8461b51d25a0aed5d528cdf6044260465708c109deef0e10"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.61/caelum-cli-v0.1.61-x86_64-apple-darwin.tar.gz"
    sha256 "cf98ff25a0b2381cccc1db0549c3b46d2fdda0ce2c3571dad3243cdc0c87160e"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
