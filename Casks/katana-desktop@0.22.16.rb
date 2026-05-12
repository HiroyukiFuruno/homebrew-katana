cask "katana-desktop@0.22.16" do
  version "0.22.16"
  sha256 "42d421a160475a6447911fa320e3b278b27fcf9ecefe2e1797c8121fcbf47597"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.16/KatanA-Desktop-0.22.16.dmg"
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
