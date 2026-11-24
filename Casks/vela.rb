cask "vela" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "bce1ddced6b79df3b63b061509eff6ea31505a053cbe5ff13d4e6f320d0fd3b5",
         intel: "df9b7d04adba0d7bee7f82c6f7fb4c82189924141de08efff31afeb806ec76da"

  url "https://github.com/ch55secake/vela/releases/download/v#{version}/Vela-#{arch}.zip"
  name "Vela"
  desc "Lightweight menu bar app for GitHub notifications"
  homepage "https://github.com/ch55secake/vela"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Vela.app"
end
