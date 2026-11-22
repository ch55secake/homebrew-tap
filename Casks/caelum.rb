cask "caelum" do
  version "0.1.123"
  sha256 "49d0b26c1a30f0f5d109ebbbefc738d0cd1437f773f66ab7080e797a70a9e3b5"

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
