class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.57/caelum-cli-v0.1.57-aarch64-apple-darwin.tar.gz"
    sha256 "8a1fbc800d26824ee3cd0c3b0eaad3e69cfadd9a7d09bb1228ab3593b771d7fc"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.57/caelum-cli-v0.1.57-x86_64-apple-darwin.tar.gz"
    sha256 "20b822e4419b0cdd50baab2c871e0e33ccb1ae09dcdf752da53e410e7a651191"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
