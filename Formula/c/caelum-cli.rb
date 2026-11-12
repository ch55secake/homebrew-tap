class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.54/caelum-cli-v0.1.54-aarch64-apple-darwin.tar.gz"
    sha256 "023a5d0faeaafe456b2320c3acf429e4e4a38809f831da8a74f0ce1d36eead52"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.54/caelum-cli-v0.1.54-x86_64-apple-darwin.tar.gz"
    sha256 "00ecdd6664f00ca791d27bcadc9b045cc67a3944fa9caaf5ef595aeb372a93d1"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
