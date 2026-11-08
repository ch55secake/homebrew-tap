class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.30/caelum-cli-v0.1.30-aarch64-apple-darwin.tar.gz"
    sha256 "d7a241d8cd340b4859bec811f70a92d840bc1e6aa10556b8da45b7a189c9c1a4"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.30/caelum-cli-v0.1.30-x86_64-apple-darwin.tar.gz"
    sha256 "3ec69b0eb7276c20820b98f531ec86367df2c81428ff9ae698ff1d6463592077"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
