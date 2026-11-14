cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.71"
  sha256 arm:   "879273e2d27126472b5cc098122674409a029eddb73c2b2d9f8be3dcd89fa1f4",
         intel: "e42831a1b3357a433f6ac223378469f76376622f4e84facbb7bb9dfaa2a753bc"

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
