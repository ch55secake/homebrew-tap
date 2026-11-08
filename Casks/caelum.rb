cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.30"
  sha256 arm:   "655b6b596f9c87753cebdc5d4638f5e834c6ce02c25f6f58e4d74383f3db6794",
         intel: "7551cb6451314d15bdf0bf5e4ff6d89bcdc9a5943cda43717925bf49f8cbf00f"

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
