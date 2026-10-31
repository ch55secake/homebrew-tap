class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.7/caelum-cli-v0.1.7-aarch64-apple-darwin.tar.gz"
    sha256 "77b07005102221fe177bb8d019f70baeb69184a179d9d92a2113e8cad286a3a3"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.7/caelum-cli-v0.1.7-x86_64-apple-darwin.tar.gz"
    sha256 "84998ca65fbc44e76be0d707397d7b376275ae5cd4424f0ac4ae1fb86409a057"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
