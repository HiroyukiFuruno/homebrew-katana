cask "katana-desktop@0.22.19" do
  version "0.22.19"
  sha256 "77b4c61b21fd3dddb5887013346abc89483693620affe51e0eca81dfc38d0c92"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.19/KatanA-Desktop-0.22.19.dmg"
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
