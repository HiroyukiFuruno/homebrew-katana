cask "katana-desktop@0.22.20" do
  version "0.22.20"
  sha256 "f9dc2447e46effebeaf57a451901f9bcacb2d75f1f1303f9b977a5392ce540d4"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.20/KatanA-Desktop-0.22.20.dmg"
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
