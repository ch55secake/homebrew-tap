cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.31"
  sha256 arm:   "e7f9a18ebec61e810dec54ea8c10fd805ee007e2c2cfbd04072f52d05ba2e74a",
         intel: "65d9756034961f570cde43acceadccef137c023d2c461a40afc43f0f868adc18"

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
