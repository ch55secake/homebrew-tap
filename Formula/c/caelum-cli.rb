class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.119/caelum-cli-v0.1.119-aarch64-apple-darwin.tar.gz"
  sha256 "3e4682ba4f90a1ba88794cb9e28ee367ade6a59aaaaca1f643306ee423c12eb6"
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
