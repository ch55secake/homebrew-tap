class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.68/caelum-cli-v0.1.68-aarch64-apple-darwin.tar.gz"
    sha256 "6c84356e7088b939b0a2b84bf3c763468d6df5a3b462db8ed552bfd26c1a6b38"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.68/caelum-cli-v0.1.68-x86_64-apple-darwin.tar.gz"
    sha256 "ed31607687f2c79b1b3ec384dc7324243b41a67d9dffca67df10db5843d744ee"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
