class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.124/caelum-cli-v0.1.124-aarch64-apple-darwin.tar.gz"
  sha256 "981f9e3b00ed41037c8758d80c68a3a287ccdc1e89727d1dd7dbeafcd2b22510"
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
