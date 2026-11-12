cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.64"
  sha256 arm:   "8259895e50abbffc6c5a7217d100c88b40d05d750070d05fda526d48c1e85e1b",
         intel: "35ea388bb694bd292dfa35742b29c28da4eef8a1dde628aef2247a8037abc264"

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
