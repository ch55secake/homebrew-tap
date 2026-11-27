cask "caelum" do
  version "0.1.181"
  sha256 "cbb7220fca1a50f38188ef9b6f6b8d7693ff952ca06921ae7c71926b212707aa"

  url "https://github.com/caelurium/caelum/releases/download/v#{version}/Caelum-v#{version}-aarch64.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/caelurium/caelum"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
