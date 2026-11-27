class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.169/caelum-cli-v0.1.169-aarch64-apple-darwin.tar.gz"
  sha256 "fcaa1b66b3cb6313d63aa8e528345d5f51d8d7215e5696be8980e86d21fb473b"
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
