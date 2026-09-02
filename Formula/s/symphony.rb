class Symphony < Formula
  desc "Auditable terminal coding-agent harness"
  homepage "https://github.com/ch55secake/symphony"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/symphony/releases/download/v1.0.0/symphony-darwin-arm64"
      sha256 "df91ec44c1450802a4ba8a2b5101cec47627d96a8c82f5aaf72b91d0553f9a61"
    else
      url "https://github.com/ch55secake/symphony/releases/download/v1.0.0/symphony-darwin-amd64"
      sha256 "617287c27f9a2d64a4039dfa055d2bfda1d0fe3387038220411f1d06a5a0bf47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/symphony/releases/download/v1.0.0/symphony-linux-arm64"
      sha256 "6935cf2e46b2383db48131287e41e54f612a43b9799090e0819bade854a67a7b"
    else
      url "https://github.com/ch55secake/symphony/releases/download/v1.0.0/symphony-linux-amd64"
      sha256 "e0528863e8274e0b62fd7b4b7be2e03610e50a1ad531264de0bef2426efd584b"
    end
  end

  def install
    bin.install Dir["symphony-*"].first => "symphony"
  end

  test do
    assert_match "usage: symphony", shell_output("#{bin}/symphony invalid 2>&1", 1)
  end
end
