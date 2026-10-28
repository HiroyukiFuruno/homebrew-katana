cask "katana-desktop@0.22.43" do
  version "0.22.43"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.43/KatanA-Desktop-0.22.43.dmg"
  name "KatanA Desktop"
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

  depends_on macos: :ventura

  app "KatanA Desktop.app"

  # Remove quarantine attribute (required for ad-hoc signed apps without Apple notarization)
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/KatanA Desktop.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.katana.desktop.plist",
    "~/Library/Caches/com.katana.desktop",
  ]
end
