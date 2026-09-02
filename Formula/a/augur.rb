class Augur < Formula
  desc "Monitor SSH connections and terminate sessions with unrecognized keys"
  homepage "https://github.com/ch55secake/augur"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/augur/releases/download/v1.0.0/augur-darwin-arm64"
      sha256 "62db17f95f4c0d40cc0268b5568ed7d8bc18bf7eb7c7bc639a16b7155bc5335e"
    else
      disable! date: "2026-09-02", because: :unsupported
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/augur/releases/download/v1.0.0/augur-linux-arm64"
      sha256 "a2bca6b78d9a43800a83c67c4c0816206f77d80b8586aa4b4d9811cda0f81866"
    else
      url "https://github.com/ch55secake/augur/releases/download/v1.0.0/augur-linux-amd64"
      sha256 "e0a23cac3ca0707aceff7914f3596ea67911ae8daae3057c09b54ebdcafa101c"
    end
  end

  def install
    bin.install Dir["augur-*"].first => "augur"
  end

  test do
    system bin / "augur", "--help"
  end
end
