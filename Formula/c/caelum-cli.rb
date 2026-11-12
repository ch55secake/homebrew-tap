class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.50/caelum-cli-v0.1.50-aarch64-apple-darwin.tar.gz"
    sha256 "ed136462411d7d41e9f3f0f398e1cc15d1fcb44b69a8ec0cfaa23e65fc0948a0"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.50/caelum-cli-v0.1.50-x86_64-apple-darwin.tar.gz"
    sha256 "56897a17ad06e11cddc6ed7a02b664f4bc126aa99ee16f3459f1953cee8c041d"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
