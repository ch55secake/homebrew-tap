class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.13/caelum-cli-v0.1.13-aarch64-apple-darwin.tar.gz"
    sha256 "0348e83ccbf22a426100f12c32faeba95ddde8a1d9a6c0bd750c5e08dcb3fd00"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.13/caelum-cli-v0.1.13-x86_64-apple-darwin.tar.gz"
    sha256 "1021a9ba1b932cef8ff6eebeeee9765bd17965e13eb1e0a42176ec8777cc51ce"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
