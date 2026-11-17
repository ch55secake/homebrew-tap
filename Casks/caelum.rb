cask "caelum" do
  version "0.1.101"
  sha256 "a6a0094c664a1762fb208f7063ab50b3e10bdbeab301914a552c54d173eab6a8"

  url "https://github.com/caelurium/caelum/releases/download/v#{version}/Caelum-v#{version}-aarch64.dmg"
  name "Caelum"
  desc "Local-first AI coding workspace"
  homepage "https://github.com/caelurium/caelum"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Caelum.app"

  zap trash: [
    "~/Library/Application Support/dev.caelum.desktop",
    "~/Library/Preferences/dev.caelum.desktop.plist",
  ]
end
