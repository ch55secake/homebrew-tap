class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.114/caelum-cli-v0.1.114-aarch64-apple-darwin.tar.gz"
  sha256 "42915fba81bf3f3d3c4c3d1c5b69f30aae98a92593abf9ba831ad23af5500ba4"
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
