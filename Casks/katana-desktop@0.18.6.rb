cask "katana-desktop@0.18.6" do
  version "0.18.6"
  sha256 "069d448b4d3842069a987fa740c566285498f69c6659822d5ad3393e953f4e8b"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.6/KatanA-Desktop-0.18.6.dmg"
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
