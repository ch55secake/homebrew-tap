class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.58/caelum-cli-v0.1.58-aarch64-apple-darwin.tar.gz"
    sha256 "1c1e7cee98ed3f82d522457abb4b50522597ebfc9e3ba63677b83b625b6c093e"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.58/caelum-cli-v0.1.58-x86_64-apple-darwin.tar.gz"
    sha256 "16ecc2b7dce350530ff204dbd3f9540b44c552b2eb76d82e520a671fb9743324"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
