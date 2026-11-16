class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.97/caelum-cli-v0.1.97-aarch64-apple-darwin.tar.gz"
  sha256 "2477fc812ceedb52a37112ac0c0cd0333fbc8f186ee5427f3737afc86be92d43"
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
