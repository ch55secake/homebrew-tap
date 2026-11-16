class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.100/caelum-cli-v0.1.100-aarch64-apple-darwin.tar.gz"
  sha256 "bfc1d08c140d146cbe0d5a01bcc934671fcc0e9183d65a90c15f4b3101a8e1e7"
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
