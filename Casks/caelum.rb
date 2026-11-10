cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.45"
  sha256 arm:   "6b8370afef317577664f485123f06e8ffd96c27b853cf422a53f384c1f9f9d92",
         intel: "7ee37d33e860140ef7c88aa5fac96ea0f92ee484ebaae19d55add2d04eb8ebc8"

  url "https://github.com/ch55secake/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/ch55secake/caelum"

  depends_on macos: :ventura

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
