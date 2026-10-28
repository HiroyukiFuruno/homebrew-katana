cask "katana-desktop@0.22.38" do
  version "0.22.38"
  sha256 "46eeaf8186afe33c4d8583a73b3eea1d36006928761a6c70d3a17bedf7904639"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.38/KatanA-Desktop-0.22.38.dmg"
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
