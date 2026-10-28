cask "katana-desktop@0.22.35" do
  version "0.22.35"
  sha256 "ab89978687cd2551da88e54e7a01cf13cf9aa491c517b02cc125bdc6ff041b5c"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.35/KatanA-Desktop-0.22.35.dmg"
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
