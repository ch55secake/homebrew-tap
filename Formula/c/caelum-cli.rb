class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.89/caelum-cli-v0.1.89-aarch64-apple-darwin.tar.gz"
  sha256 "bafe2941292c656047bc2200a6e9febf8b670c7c8066ad1e62747574be478556"
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
