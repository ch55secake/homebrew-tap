class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.82/caelum-cli-v0.1.82-aarch64-apple-darwin.tar.gz"
    sha256 "5b23fe390e2ae58687db9a446278732868e198d770441b52e55581648247ebc4"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.82/caelum-cli-v0.1.82-x86_64-apple-darwin.tar.gz"
    sha256 "f8c3affd22fd203b4461860fcd1c766ae512d980e1711308a88e3e81c6e6e2b7"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
