cask "katana-desktop" do
  version "0.22.13"
  sha256 "aab960cece50a0d6ed7fd727d74a503534b4cefbebeabf0e9a6f343b81cd83d9"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.13/KatanA-Desktop-0.22.13.dmg"
  name "KatanA Desktop"
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

  livecheck do
    url :url
    strategy :github_latest
  end

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
