class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.137/caelum-cli-v0.1.137-aarch64-apple-darwin.tar.gz"
  sha256 "7c1a3a48dc34142a205191eacb43eaf3aae43ab317e779760d66e1230637867b"
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
