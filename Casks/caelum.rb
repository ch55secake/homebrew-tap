cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.69"
  sha256 arm:   "5ac7ceefb6f02087aa5d4991ea92d8a97e51dae0f0aa6e157bb0084a9ec404bf",
         intel: "f44e4204ee4973599dc098eeb7056deab3b3737687bebc25d8bcf1d808f9a623"

  url "https://github.com/ch55secake/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/ch55secake/caelum"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
