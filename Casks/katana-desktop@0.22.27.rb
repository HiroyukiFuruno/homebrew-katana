cask "katana-desktop@0.22.27" do
  version "0.22.27"
  sha256 "b429aa9f61e9771c2e29856d3d6fcebbefc1bf5fb8a852688e4406786087ba39"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.27/KatanA-Desktop-0.22.27.dmg"
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
