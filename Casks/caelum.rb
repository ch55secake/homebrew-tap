cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.7"
  sha256 arm:   "e59a2c45b81fda95205adc9b7677d3286f3ff578e8100e47e378a86e2f9eb65a",
         intel: "f67275a3ce3bc5b32e284bbd590c44f7a5ad90d6843a99c0ae6932034ac7995b"

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
