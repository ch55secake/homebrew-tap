cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.51"
  sha256 arm:   "a959b3f2547aea7eeff6ef7b4f3aac71d2c4a639eefcdf2084b210c442511b32",
         intel: "a5defee4b1070888f721b5cf7d028bbaec27bee6f2b8123897bf183bc02e43d0"

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
