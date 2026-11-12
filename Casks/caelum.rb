cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.63"
  sha256 arm:   "96d65a0c3d80f3ddf852e2738e75b0f730fb05b45a2cae8f729da53809964d16",
         intel: "ebbcdd2edcb5e3ca06ff685ad91d99dd14736bfa1811657fed9d3fce90c0fb1c"

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
