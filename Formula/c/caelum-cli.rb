class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/caelurium/caelum"
  url "https://github.com/caelurium/caelum/releases/download/v0.1.120/caelum-cli-v0.1.120-aarch64-apple-darwin.tar.gz"
  sha256 "1877dc558c19bbaae658cfdb1eb757713d00f85a8451cd4c2101170fe4ea4cc9"
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
