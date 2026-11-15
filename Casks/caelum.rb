cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.82"
  sha256 arm:   "367ce712e698a736251b86b1312a4a69882020d0af8a51497e686b49c14fd5c5",
         intel: "0fdc0f3ad83f216dd28789c9e6a9e9497b7aa07d83d034eb9b7b566ecdf1d749"

  url "https://github.com/ch55secake/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/ch55secake/caelum"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
