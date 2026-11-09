class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.38/caelum-cli-v0.1.38-aarch64-apple-darwin.tar.gz"
    sha256 "2f792ce3ea14c8e5b65a094df60ad8f9fe4548a0011615983e02a2e40d4b9e79"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.38/caelum-cli-v0.1.38-x86_64-apple-darwin.tar.gz"
    sha256 "6c45a85bfb0ea24d62bc185519be418fd1b5c6aa028cc29ba692f2c41de0df2f"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
