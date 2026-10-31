cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.5"
  sha256 arm:   "d8b4e613f3a4c1d037c788ba5152995c2410c4c2c43bdfbf99c6a9def2be7368",
         intel: "0ee62bb36f5956627f31c3245f758b38cb12a35fed318487be8f8485d34d6c21"

  url "https://github.com/ch55secake/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/ch55secake/caelum"

  depends_on :macos

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
