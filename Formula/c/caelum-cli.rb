class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.112/caelum-cli-v0.1.112-aarch64-apple-darwin.tar.gz"
  sha256 "8cb1e9337dd5c9845ca3b63b1216cd21eb7b7e882229e95c1455869f5f7b913e"
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
