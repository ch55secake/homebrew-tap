cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.59"
  sha256 arm:   "a1bbb2613953e1abc33db89267719a9e27c537fd32e7106a1d5a49e7626d24c3",
         intel: "19aa51827e7ec40d8691093d2891a480d09dc561e4bbbd85e31294c5a62698e7"

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
