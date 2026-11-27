class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.177/caelum-cli-v0.1.177-aarch64-apple-darwin.tar.gz"
  sha256 "f08b33c776dbf411390338c66bc5ad89764f614d940a1fa4bc73b56fab5f0405"
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
