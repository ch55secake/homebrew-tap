class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.31/caelum-cli-v0.1.31-aarch64-apple-darwin.tar.gz"
    sha256 "84ea3b2c885ab31ca440bfab650b1f08455038748e230d8b59f5c57a8de5f57c"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.31/caelum-cli-v0.1.31-x86_64-apple-darwin.tar.gz"
    sha256 "20b47b19019029bd139cbad2924de21d39933a3df6364789b9afc75f44d40afd"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
