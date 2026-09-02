class Convoy < Formula
  desc "Orchestrate multiple Alpine Linux containers and tasks"
  homepage "https://github.com/ch55secake/convoy"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/convoy/releases/download/v1.0.0/convoy-darwin-arm64"
      sha256 "5fac769bb0b81571eea0d9de0863809b91a5830706f97cb3f94eca1d866f52c2"
    else
      url "https://github.com/ch55secake/convoy/releases/download/v1.0.0/convoy-darwin-amd64"
      sha256 "b3db3895baaeced8aa53fee1c9ce84f9acfa48f8d50318d35106db3abb236600"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/convoy/releases/download/v1.0.0/convoy-linux-arm64"
      sha256 "3c5ebfda104cb7035cf2977924cfd9d8c509f7a4cd638dc71e591684918032db"
    else
      url "https://github.com/ch55secake/convoy/releases/download/v1.0.0/convoy-linux-amd64"
      sha256 "23f33e78d99836bbc99a1be6f7ad3381ee00cb5a23f96eff09850681ce48491b"
    end
  end

  def install
    bin.install Dir["convoy-*"].first => "convoy"
  end

  test do
    system bin / "convoy", "--help"
  end
end
