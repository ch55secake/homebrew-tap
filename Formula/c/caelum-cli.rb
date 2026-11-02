class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.11/caelum-cli-v0.1.11-aarch64-apple-darwin.tar.gz"
    sha256 "490bfeed32ee98de840bb2f6d8e32ff85071ca3a0b7af8a0c6ca12520832c452"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.11/caelum-cli-v0.1.11-x86_64-apple-darwin.tar.gz"
    sha256 "00243eb601e3b239d5cb05fd34597df63152d8aa80a8337b207e84fb915db90e"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
