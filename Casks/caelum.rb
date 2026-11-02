cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.10"
  sha256 arm:   "8a60c5f398ba3304a73ab62446aa21e8400c9a383939c05dbf5411de1cf2c4cd",
         intel: "0030de59c52e258acc4ba35480deb43249cbfe1200af223f41820ab079177e82"

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
