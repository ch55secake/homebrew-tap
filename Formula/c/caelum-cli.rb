class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.153/caelum-cli-v0.1.153-aarch64-apple-darwin.tar.gz"
  sha256 "1b0034ee0adb55b3dad7b3a5d4bb27d73f5aa2f500550558451bca2511a20c9e"
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
