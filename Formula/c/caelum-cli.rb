class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.44/caelum-cli-v0.1.44-aarch64-apple-darwin.tar.gz"
    sha256 "c8f127fb2a30f3f391df54c95e1473a2f6a3f663b88fd48ed4859860d10f1bbc"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.44/caelum-cli-v0.1.44-x86_64-apple-darwin.tar.gz"
    sha256 "ae473cf0ae3da3df5595c704c08ea17e850bb22547ec2e69890f27213c11c1ad"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
