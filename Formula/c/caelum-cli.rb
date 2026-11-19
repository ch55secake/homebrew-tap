class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.109/caelum-cli-v0.1.109-aarch64-apple-darwin.tar.gz"
  sha256 "4da317cab125694c0836fe53df3c3ac70f2ad4c890f63691445c74b581ac6843"
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
