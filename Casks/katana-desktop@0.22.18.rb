cask "katana-desktop@0.22.18" do
  version "0.22.18"
  sha256 "44af214ff52ca4a7b401acf80d83e10eaedaf710b6c273b36618aef283fac040"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.18/KatanA-Desktop-0.22.18.dmg"
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
