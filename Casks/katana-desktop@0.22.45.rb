cask "katana-desktop@0.22.45" do
  version "0.22.45"
  sha256 "77f5da0da076e8376d8e5066ca219eecc2d45b772cb122bb0c406c52b46eafa7"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.45/KatanA-Desktop-0.22.45.dmg"
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
