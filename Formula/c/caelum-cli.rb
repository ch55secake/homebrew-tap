class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.150/caelum-cli-v0.1.150-aarch64-apple-darwin.tar.gz"
  sha256 "4e9d9e5b9d6820a3f66da451adb1a957b21284fee54c3b6796b8873c88d9f40b"
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
