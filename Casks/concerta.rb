cask "concerta" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "611394dd7a7c9c358670c2603d5963717838a19c0877860cc72912d2016c52c4",
         intel: "3ad330b5e00a4e88250e404fb1ec36a92a0e96e3f5957b29a8684dbdbcb31fd1"

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
