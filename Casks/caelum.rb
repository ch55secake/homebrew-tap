cask "caelum" do
  version "0.1.108"
  sha256 "d8a9f4aa4e790fb6b38941fa6922fc1244547cce2e0c851f563bfa43cd40acfc"

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
