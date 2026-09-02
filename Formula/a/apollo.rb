class Apollo < Formula
  desc "Dashboarding TUI using Prometheus as a data source"
  homepage "https://github.com/ch55secake/apollo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/apollo/releases/download/v0.1.1/apollo-darwin-arm64"
      sha256 "4b0e7f3c4d73bbc10c8a5a298220c7961621417d6f22c662249f57a2ffbdf5d4"
    else
      url "https://github.com/ch55secake/apollo/releases/download/v0.1.1/apollo-darwin-amd64"
      sha256 "faea34d5e6cabda77ce97bff3238b1fda3da812996ed118cacdd83e46769f781"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/apollo/releases/download/v0.1.1/apollo-linux-arm64"
      sha256 "a437f7d969c3ed4523014e38259737601e2d20eafa39e0d64a2446ee520202b5"
    else
      url "https://github.com/ch55secake/apollo/releases/download/v0.1.1/apollo-linux-amd64"
      sha256 "fecd2530c5f97cf9cebe67cda11287a578d8d1f97f730ea375dde99fa6a1b5b7"
    end
  end

  def install
    bin.install Dir["apollo-*"].first => "apollo"
  end

  test do
    assert_match "apollo 0.1.1", shell_output("#{bin}/apollo --version")
  end
end
