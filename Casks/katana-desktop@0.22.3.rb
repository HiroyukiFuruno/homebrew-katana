cask "katana-desktop@0.22.3" do
  version "0.22.3"
  sha256 "7499d63496a4f66fe3de2271a3faf3d96829ee009438c08235c5b01caf420110"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.3/KatanA-Desktop-0.22.3.dmg"
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
