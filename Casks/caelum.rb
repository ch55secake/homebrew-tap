cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.84"
  sha256 arm:   "a8a814f60877baaa735958b70cde32600f342e7194d8c8ba2c3e12e33b4001b9",
         intel: "72de36a578caed17fe221b4e2ab13ccef47eb50aa06f88993818a99443eb9130"

  url "https://github.com/caelurium/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/caelurium/caelum"

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
