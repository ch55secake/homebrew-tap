cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8"
  sha256 arm:   "ea20ef2192706011ed6c128d9cd8c35ee0b1196565533e4b1fdfefdafe4166fb",
         intel: "e645410e83c7654d60cc5a9edfc1ec51fef76a6d122d7d1245c2db8659ffe657"

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
