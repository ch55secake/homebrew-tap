class CaelumCli < Formula
  desc "Command-line interface for the Caelum coding workspace"
  homepage "https://github.com/ch55secake/caelum"
  license "MIT"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.69/caelum-cli-v0.1.69-aarch64-apple-darwin.tar.gz"
    sha256 "a42a519e5a1774954e81346c4172032ce4da6f7390a97a39dc04f33b3ae5d91f"
  else
    url "https://github.com/ch55secake/caelum/releases/download/v0.1.69/caelum-cli-v0.1.69-x86_64-apple-darwin.tar.gz"
    sha256 "55362407ed75bddc8ab56cd28a90c4dddcde85e8bc423a2f78b4ae667ad203ce"
  end

  def install
    bin.install "caelum"
  end

  test do
    assert_match "caelum #{version}", shell_output("#{bin}/caelum --version")
  end
end
