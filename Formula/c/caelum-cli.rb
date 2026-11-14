class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.78/caelum-cli-v0.1.78-aarch64-apple-darwin.tar.gz"
    sha256 "2ef0f137183fead9d88bd665ca4f88fafac42ce33415be054da0ca3ec92d8ade"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.78/caelum-cli-v0.1.78-x86_64-apple-darwin.tar.gz"
    sha256 "8e81a532a2bca723ab0760fb2c26edea5e7622ac89acf7634cac6aea629498f0"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
