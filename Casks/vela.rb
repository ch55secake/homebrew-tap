cask "vela" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "1cdfdd5edb122a79d974d9f0fc6f86f94b8c98ad1e4eb9b5787760d742c55027",
         intel: "240f4b8e9966d0e80e48906a391982d4ac747328ad1ad9060d95afe1fff6b999"

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
