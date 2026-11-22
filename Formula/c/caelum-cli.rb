class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.122/caelum-cli-v0.1.122-aarch64-apple-darwin.tar.gz"
  sha256 "652851e446ff868b5c76f16437d3fbd8fd312c2ccd0df9b24bc5ea07febf5ef9"
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
