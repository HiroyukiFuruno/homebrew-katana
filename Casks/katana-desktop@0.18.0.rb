cask "katana-desktop@0.18.0" do
  version "0.18.0"
  sha256 "e449eaad635aa39a54b37f9c6bd3bf4213114ff40d14cfeb7aedbaf9fbbe2a2e"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/#{version}/KatanA-Desktop-#{version}.dmg"
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
