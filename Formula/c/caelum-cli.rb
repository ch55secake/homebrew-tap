class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.10/caelum-cli-v0.1.10-aarch64-apple-darwin.tar.gz"
    sha256 "1f696d91522f68684f540988b9e252146b9cd30d73a4933d05e0381bf73ca54a"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.10/caelum-cli-v0.1.10-x86_64-apple-darwin.tar.gz"
    sha256 "d57be67f96ad6126c7bb3ae447d8ce429167068779df7098c4df0dc01694947d"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
