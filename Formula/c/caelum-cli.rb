class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.59/caelum-cli-v0.1.59-aarch64-apple-darwin.tar.gz"
    sha256 "0b365a8abfa9042742fcac4eb7755cf4971c5da5af041a54b363fc7622c70ef0"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.59/caelum-cli-v0.1.59-x86_64-apple-darwin.tar.gz"
    sha256 "447063c7b0326e1069c54fb5ef9044386c2c87fba1c27ad6203de2016a4420e0"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
