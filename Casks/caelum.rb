cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.36"
  sha256 arm:   "1883fe6853649c04730c1d5b8f7ea188d02ed6c4f3934138c21b1ea039ba4357",
         intel: "3b81dd0b14e37cbc7bc2b86a7cc241f5edfe9a1722bcc933bd90a2b6bdc0fd0f"

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
