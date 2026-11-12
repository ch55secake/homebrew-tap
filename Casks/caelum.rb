cask "caelum" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.68"
  sha256 arm:   "fa58eb244481d2cdb7c916fc38db76ad833bf4f3fc3ca5af5602bcb4b22dc94e",
         intel: "6723565b0a4dbd48ae8c3faf9b084413d80c045aebf47434113c09adcf618d67"

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
