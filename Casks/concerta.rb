cask "concerta" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "97eb7b1ff78a5c86645f87e3f3b34d7907a9a0c00d423183009e47f2a10253f5",
         intel: "ec433176761851940968e1484aa2b6ed5f2416bd2e2650ee96796e02e7abda61"

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
