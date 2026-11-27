class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.180/caelum-cli-v0.1.180-aarch64-apple-darwin.tar.gz"
  sha256 "b9cd0492689cbc29e368e838292384cafec6fbbbb95aad777dc6bfbf0e41d292"
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
