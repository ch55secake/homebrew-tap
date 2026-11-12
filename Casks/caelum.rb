cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.57"
  sha256 arm:   "809dbb944724922ce313e041a51780f72a28e159de01fd14f7f7dc7ed1f31e21",
         intel: "6971a2c92792b54a9f9c2e45293923147b7e0eb87b4614ce5cb43097286c6f8a"

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
