class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.71/caelum-cli-v0.1.71-aarch64-apple-darwin.tar.gz"
    sha256 "265fc8563ca2c24c5f92151ae355ae6b971d2bfa7703c766c5d30814039848b8"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.71/caelum-cli-v0.1.71-x86_64-apple-darwin.tar.gz"
    sha256 "eb43d3d4d34b90d479a2604be235c58104bb2ea3ed3e124ea7c1f688129e7159"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
