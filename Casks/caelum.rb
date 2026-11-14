cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.78"
  sha256 arm:   "2d0504f24f942d78216d1f5caf0241a9d4bef82f66e8cf3a9f980a2faa6a315d",
         intel: "63b9adb93c40b7938a37f861d45616fbf9afb988e93b16c98d0b097077fe5132"

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
