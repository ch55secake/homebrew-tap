class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.49/caelum-cli-v0.1.49-aarch64-apple-darwin.tar.gz"
    sha256 "a8bb15a0308f4713657eccc21e7573d6954716eeac62bb14aa3280d0b4471eb8"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.49/caelum-cli-v0.1.49-x86_64-apple-darwin.tar.gz"
    sha256 "d0610188c76e8d7e42b071e285c3e9e8ae0ee88ec8328f3c3e7922b06f00e2bf"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
