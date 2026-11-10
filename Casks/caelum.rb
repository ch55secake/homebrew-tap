cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.44"
  sha256 arm:   "8ace9e4d98cde68c6e19f8bb3f7a993892248360193bcac9a599504f36e8c750",
         intel: "0dac6357a73e086158de75ab9dcf259308885f25a3a29b656a1131dc1b357aa8"

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
