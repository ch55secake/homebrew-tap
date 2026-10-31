class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.6/caelum-cli-v0.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "e91c681c5685b716eab14ca1235c3f945d15035639effa514072ac0809fb154c"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.6/caelum-cli-v0.1.6-x86_64-apple-darwin.tar.gz"
    sha256 "49f6bcb4d6a9bbf6185acf05362fa83641d9fa38199e6d1f3f4e38a15dc93cf1"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
