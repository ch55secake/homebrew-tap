class Orbit < Formula
  desc "Terminal-native mission control for your servers"
  homepage "https://github.com/ch55secake/orbit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/orbit/releases/download/v1.0.4/orbit-darwin-arm64"
      sha256 "34903e176fb3c67ab1b582f09f569b7a2425c4130a8d66734121f9c5d0e52bec"
    else
      url "https://github.com/ch55secake/orbit/releases/download/v1.0.4/orbit-darwin-amd64"
      sha256 "a6453d9fb740d83c05a71b7b4f88e882a22c7479d3d512aaec2ec2e67a383d2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/orbit/releases/download/v1.0.4/orbit-linux-arm64"
      sha256 "9fbc6c964878d9b6665a69ec2dcff2d0ff1dff0d548685a459245200c7fbf257"
    else
      url "https://github.com/ch55secake/orbit/releases/download/v1.0.4/orbit-linux-amd64"
      sha256 "dcd37482295e9ef5ad92c64e15fdd5c615801245be5d3d160cefc94d12c464d5"
    end
  end

  def install
    bin.install Dir["orbit-*"].first => "orbit"
  end

  test do
    assert_match(/^orbit /, shell_output("#{bin}/orbit version"))
  end
end
