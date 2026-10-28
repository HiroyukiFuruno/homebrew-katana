cask "katana-desktop@0.16.8-1" do
  version "0.16.8-1"
  sha256 "35e15d6ed7cafe477e889d498dbdc80593fa133d30176764f3747e28250cc0da"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v#{version}/KatanA-Desktop-#{version}.dmg"
  name "KatanA Desktop"
  desc "Markdown viewer with live preview, Mermaid diagrams and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

  depends_on macos: :ventura

  app "KatanA Desktop.app"

  # Remove quarantine attribute (required for ad-hoc signed apps without Apple notarization)
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/KatanA Desktop.app"]
  end

  zap trash: [
    "~/Library/Caches/com.katana.desktop",
    "~/Library/Preferences/com.katana.desktop.plist",
  ]
end
