cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.54"
  sha256 arm:   "70406ac358eb881d999cc4eb6538d375673b32a57124af24c17413b97a458770",
         intel: "f02ba119088728658eb2606166a3947d4e97f7d3052b1a1cdc6fb726a4cdd6df"

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
