class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.101/caelum-cli-v0.1.101-aarch64-apple-darwin.tar.gz"
  sha256 "f0f53cf65093886f089f317759208ce8ee4d7f64987fea25b02898ef3e300f5c"
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
