cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.49"
  sha256 arm:   "51f965f38d03690264a2b071198d26705309a3c1e42cdbc29a2e804b5c28fd53",
         intel: "268457fc15d1538cf6859b104bf5191514bc0bcc0468f3c62110efaa74b9d962"

  url "https://github.com/ch55secake/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/ch55secake/caelum"

  depends_on macos: :ventura

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
