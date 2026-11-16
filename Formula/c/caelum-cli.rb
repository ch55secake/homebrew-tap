class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.98/caelum-cli-v0.1.98-aarch64-apple-darwin.tar.gz"
  sha256 "0e92519ec4cd5b6d41302623b00c556a7b0ac890e3b467add4183768237cff40"
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
