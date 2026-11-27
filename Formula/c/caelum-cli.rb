class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.188/caelum-cli-v0.1.188-aarch64-apple-darwin.tar.gz"
  sha256 "58521edc3db8a5c60e13684504aecd1f5fba25cc570d5e5089f377a3dcf78305"
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
