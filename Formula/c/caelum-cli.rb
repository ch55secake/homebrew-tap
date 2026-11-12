class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.64/caelum-cli-v0.1.64-aarch64-apple-darwin.tar.gz"
    sha256 "c97884cf0f61702f7905e804b8055930edcb580609640fcaca57bd132438662c"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.64/caelum-cli-v0.1.64-x86_64-apple-darwin.tar.gz"
    sha256 "59bd52dd67605df943ddbdeb2941570f0f2544fab1f78ac1c47f1152f1077e59"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
