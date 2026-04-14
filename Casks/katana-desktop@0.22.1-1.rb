cask "katana-desktop@0.22.1-1" do
  version "0.22.1-1"
  sha256 "dc836100c518998e2c8f16c39ded7084b03fae06f4312d5cf86a6b06405db609"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.1-1/KatanA-Desktop-0.22.1-1.dmg"
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
