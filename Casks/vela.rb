cask "vela" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "23804b580b0dbe153f816aa8c5d367518cf638f92aab5c9222cc159642978ad7",
         intel: "460df48e050c7e0e56166889695c413bf3e1905d6858c02b1e58b3df0f45f1ef"

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
