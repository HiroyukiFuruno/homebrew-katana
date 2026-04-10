cask "katana-desktop@0.18.1" do
  version "0.18.1"
  sha256 "0211cd855506435919e19d8919ac124bdde3b1b58d8e8e28c6f7616ab67f6793"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.1/KatanA-Desktop-0.18.1.dmg"
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
