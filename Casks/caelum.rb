cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.6"
  sha256 arm:   "16dfd8ca698b5942c2fbff491e2e81d24ecbdee4d8ae0229bbce262db6de9c89",
         intel: "7a7ad0f406facd7bfaa6c5d7e018c6078d7268f333e075fd274ada7a29f494b8"

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
