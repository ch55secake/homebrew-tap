cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.58"
  sha256 arm:   "581d542af6eb7b312b631e876d608630d5be98c1d3ac063bde223133c9485b76",
         intel: "98f25c5efe50ee417f66bcc16859d68e49ce5432a2fbabff1df21bd78b21e109"

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
