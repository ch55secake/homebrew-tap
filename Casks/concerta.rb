cask "concerta" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "f21603cd681618d93f152f0a8e1078f42de6d0e38eaed3671e356533fee4d0dc",
         intel: "c447674bf754d552fe1c961a69ef6c4cc54d3955ddcccecd6b9008308fd11fb0"

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
