class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.182/caelum-cli-v0.1.182-aarch64-apple-darwin.tar.gz"
  sha256 "cee949041bac56bf4da7a40f1837588fc7ef66e8b099379991588b5ce0f1927f"
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
