cask "katana-desktop@0.22.31" do
  version "0.22.31"
  sha256 "ef6ef53a86e42a18928b39a95be9eb2d8dbf8e78cf62aa2c188e19fc0bfcc85a"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.31/KatanA-Desktop-0.22.31.dmg"
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
