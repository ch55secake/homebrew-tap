cask "caelum" do
  version "0.1.113"
  sha256 "46da80801ba712c356afe40b6084d37d459b1626b3db4cfcf51a989ddb050ac1"

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
