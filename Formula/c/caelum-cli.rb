class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.36/caelum-cli-v0.1.36-aarch64-apple-darwin.tar.gz"
    sha256 "43900b616a9581afa12b0e981abe4512c55e122b65bfc7de4f8cd116b31fc015"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.36/caelum-cli-v0.1.36-x86_64-apple-darwin.tar.gz"
    sha256 "e587c144cb529ec1bb113d1e627f8f0aa59fe46a2887e458a87bb007482204ac"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
