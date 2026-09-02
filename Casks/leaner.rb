# Cask del tap público: github.com/leaner-app/homebrew-tap/Casks/leaner.rb
# Instalación: brew install --cask leaner-app/tap/leaner
# `make publish` actualiza aquí version/sha256 y lo publica en el tap; solo hay que commitearlo.
cask "leaner" do
  version "1.2.3"
  sha256 "9b9cf95bd5c1d2ae924698a976bc7c723eec01370616cfc24dc2369599a78609"

  url "https://github.com/leaner-app/releases/releases/download/v#{version}/Leaner-#{version}.zip"
  name "Leaner"
  desc "Limpieza segura del disco y desinstalación de apps sin uso"
  homepage "https://github.com/leaner-app/releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Leaner.app"

  zap trash: [
    "~/Library/Preferences/app.leaner.mac.plist",
    "~/Library/Saved Application State/app.leaner.mac.savedState",
  ]
end
