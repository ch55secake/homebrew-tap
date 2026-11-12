cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.50"
  sha256 arm:   "09539dcdfce2c4f44275a17ac73f2b5a9e4e36e192b5d5dd0e62f3eb9f40ea31",
         intel: "cc6495d88fa20e53dd1a9d141fb068f88317760b86caf5edeb450ab5fa3db9ca"

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
