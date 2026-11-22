class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.125/caelum-cli-v0.1.125-aarch64-apple-darwin.tar.gz"
  sha256 "78a854267917fc7717f8161deee35dec6115cc5893ad5d4c0357c52b9c620748"
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
