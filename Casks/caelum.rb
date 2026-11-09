cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.40"
  sha256 arm:   "13fcb2aea0d0d9bacb026db877f1c3974efe1cbf19c3204679f41933d15e9b9e",
         intel: "2230a93a2ff7cb933754345282e398b3e79eeb008a110600c87ef5785f737d5a"

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
