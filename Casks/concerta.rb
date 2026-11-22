cask "concerta" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "1dbe21976b3f84697c2551bfe0efdc73e3f9948b78b0bf20ab49ae2f2a29e4f2",
         intel: "d4754daa0d03cfe062a4e99c7d74ea9fb6fd0e1406bd8a6bea63782ffe5cae6a"

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
