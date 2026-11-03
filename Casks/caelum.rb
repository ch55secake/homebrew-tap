cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.11"
  sha256 arm:   "f172ad683c8c92d84fe513dc01a5d768b13b640acd3cdbc98cc004e5d95f7317",
         intel: "bc89d36064762a8fb996735fcf169240f78a3e5bb3075c006a8293e1fcbdc68b"

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
