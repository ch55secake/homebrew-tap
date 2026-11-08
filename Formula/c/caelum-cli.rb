class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.29/caelum-cli-v0.1.29-aarch64-apple-darwin.tar.gz"
    sha256 "22d29ac50801189b778511aacb3d2573196214add786b9a5ec943506ab29ff17"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.29/caelum-cli-v0.1.29-x86_64-apple-darwin.tar.gz"
    sha256 "cff8619399c2226715284869ff8a1da9e8b23d5c3757dbdbe5df93b30e3f1e0c"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
