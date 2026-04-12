cask "katana-desktop@0.22.1" do
  version "0.22.1"
  sha256 "78996767d8c0879e699ec4261ccb3e35e01d9cd42a113c5d5543338fce907f23"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.1/KatanA-Desktop-0.22.1.dmg"
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
