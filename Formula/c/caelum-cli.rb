class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.136/caelum-cli-v0.1.136-aarch64-apple-darwin.tar.gz"
  sha256 "58af1a290f2e381ced42cd52f55f17456045eefc379afc31dde747feef8b6cf1"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
