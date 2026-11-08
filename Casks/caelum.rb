cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.29"
  sha256 arm:   "4dcf3209fb8345e94c4df16c357db20888c453cef52bd7664d947f0a9647d110",
         intel: "512210c1c8dd1a4f8f7e4d6f9dce5992a8b8e299a63909f38451a1ec824a91eb"

  url "https://github.com/ch55secake/caelum/releases/download/v#{version}/Caelum-v#{version}-#{arch}.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/ch55secake/caelum"

  depends_on :macos

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
