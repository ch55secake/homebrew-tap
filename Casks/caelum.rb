cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.61"
  sha256 arm:   "89d262d532d9e2258e6140e209c333d255c7f0471c3cbf81b1ba14d1ae429973",
         intel: "258abc2bf9260049079edbdff0042d5045afd4745a2e5c07469d66fe560c0f4c"

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
