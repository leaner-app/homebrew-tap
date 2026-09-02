# Cask del tap propio: github.com/leaner-app/homebrew-tap/Casks/leaner.rb
# Instalación: brew install --cask leaner-app/tap/leaner
# `make publish` imprime la versión y el sha256 que hay que actualizar aquí en cada release.
cask "leaner" do
  version "1.1.0"
  sha256 "ece323761199729d130f4ebd4eb043bcb1d0ccc7a2371bcff3bf55637c6af662"

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
