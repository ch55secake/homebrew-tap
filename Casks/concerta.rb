cask "concerta" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "090d5d1ad73f13d259235b56486c7ccc5c6f95424ee09ec8aa34edac765fa5c9",
         intel: "a6e15f74e8219023fd4c9f0c94624b027232a5d687c0af84daa3811696a8ed5e"

  url "https://github.com/ch55secake/concerta/releases/download/v#{version}/Concerta-#{arch}.zip"
  name "Concerta"
  desc "Menu bar toggle for preventing system and display sleep"
  homepage "https://github.com/ch55secake/concerta"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Concerta.app"
end
