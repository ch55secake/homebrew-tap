class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.194/caelum-cli-v0.1.194-aarch64-apple-darwin.tar.gz"
  sha256 "317355f0e970d24e6fa3238d8906975e9e2e264ca2d42a1aefff2d37e193a576"
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
