cask "katana-desktop@0.18.4" do
  version "0.18.4"
  sha256 "182e671eff32c10b1a05c706f0aaf57437653b693ca82e5ae05f0e9d884ae046"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.4/KatanA-Desktop-0.18.4.dmg"
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
