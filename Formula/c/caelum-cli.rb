class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.163/caelum-cli-v0.1.163-aarch64-apple-darwin.tar.gz"
  sha256 "5f2823ac854e3f55c20043d5bc5adf82b8e2181892a530d68ae66bb3aeb3af69"
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
