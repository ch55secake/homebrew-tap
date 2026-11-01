class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.9/caelum-cli-v0.1.9-aarch64-apple-darwin.tar.gz"
    sha256 "d8cdb3be6bd28b9d04cb6b21c9d966a885adccffb5a4c36557b10a6e398d1b89"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.9/caelum-cli-v0.1.9-x86_64-apple-darwin.tar.gz"
    sha256 "5ec5bc220ce151c2e472c6975051a65c2794efe2a0badbee1e9d4244ee3679de"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
