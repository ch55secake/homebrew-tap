class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.8/caelum-cli-v0.1.8-aarch64-apple-darwin.tar.gz"
    sha256 "8c36338d39f9eb7ee66c5a376b06552ec891e792f4e7f3d703f5db5b8395ea58"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.8/caelum-cli-v0.1.8-x86_64-apple-darwin.tar.gz"
    sha256 "ae850d34013689e1a154385519af8e43eda6ec9d655f21a389d5975c4fa82f40"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
