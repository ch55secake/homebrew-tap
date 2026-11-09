cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.38"
  sha256 arm:   "27be82d8bb6eef17717bf566a792821a29d32a924ab15e924d656539178d8f24",
         intel: "7a4f5b849bc71db591e9034550dbb5a65cb2b6aed80a34b74ea0023d2a1ff0fd"

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
