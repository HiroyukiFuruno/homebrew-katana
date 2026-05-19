cask "katana-desktop@0.22.24" do
  version "0.22.24"
  sha256 "ac6e3a2cdd596f35e0d5ca972d8911ec60ff8a85bf78b177469cccd197ecc9e8"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.24/KatanA-Desktop-0.22.24.dmg"
  name "KatanA Desktop"
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

  depends_on macos: ">= :ventura"

  app "KatanA Desktop.app"

  # Remove quarantine attribute (required for ad-hoc signed apps without Apple notarization)
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/KatanA Desktop.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.katana.desktop.plist",
    "~/Library/Caches/com.katana.desktop",
  ]
end
