class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.94/caelum-cli-v0.1.94-aarch64-apple-darwin.tar.gz"
  sha256 "1db32d5068da7a0370e981e681a4501ea4051e6e495bf0e2334f97be9c1f72c7"
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
