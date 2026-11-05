cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.13"
  sha256 arm:   "dae1cd95c15917a00d07d7bc612bffd6fa5c4a41b675bd1e19fb76cb13b02381",
         intel: "b79e27bb3ae5b55014be5aa8837bd54b089c38b5a99773bed60a2b8b77fccb9d"

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
