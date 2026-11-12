class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.63/caelum-cli-v0.1.63-aarch64-apple-darwin.tar.gz"
    sha256 "defc3b7615cf9bd5bf1a9bd7536237fe9f5c7b5d18a6f2006d7d14c66ae8374b"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.63/caelum-cli-v0.1.63-x86_64-apple-darwin.tar.gz"
    sha256 "f1a70f8453b5e5800702e4f571f43158db3988f3a9cec1f7794cd25674436771"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
