class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.151/caelum-cli-v0.1.151-aarch64-apple-darwin.tar.gz"
  sha256 "10c1f14034e0ddce2b93b0f718c84a3f3019a47f5bf3325440deda5b00dddbf7"
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
