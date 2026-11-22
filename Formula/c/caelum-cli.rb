class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.116/caelum-cli-v0.1.116-aarch64-apple-darwin.tar.gz"
  sha256 "97868e18b5e5f0442dc99130d3a6018bcd2fb66db116989b11fbeaff8815ae57"
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
