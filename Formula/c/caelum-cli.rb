class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.5/caelum-cli-v0.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "7a2c7b16263230724f1f8fba298207a0a6a4b74c138e0bae21c944a20aabc167"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.5/caelum-cli-v0.1.5-x86_64-apple-darwin.tar.gz"
    sha256 "c6b01242652ebe861e3302d241da5c7fb263bc14ea2a333d73af83601fac0ed6"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
