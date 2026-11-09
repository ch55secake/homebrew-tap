class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.40/caelum-cli-v0.1.40-aarch64-apple-darwin.tar.gz"
    sha256 "8af639ebe86cc0d7ec981593ec7e7eb23306dcab2b62e504131a4fc707f256fc"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.40/caelum-cli-v0.1.40-x86_64-apple-darwin.tar.gz"
    sha256 "e5fb6dbdc4f2fec4a4ef73074e5286b8ee139214f849483ff4be7706da61c0c7"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
