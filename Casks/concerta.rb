cask "concerta" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.5"
  sha256 arm:   "3ddc3387b613496763a23730454b7a136922ecbb431a63f6a11f5f2a773322cf",
         intel: "4fe5d486ce432e64dbe7a5546a18de04c20c68ef48b44ad2a2cc26c5810ad923"

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
