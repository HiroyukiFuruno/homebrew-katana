cask "katana-desktop@0.8.6" do
  version "0.8.6"
  sha256 "0b35c7b7fda13fb45e69998d55c85ce0adf2557ca0383c5a5c9f993339fbfa89"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v#{version}/KatanA-Desktop-#{version}.dmg"
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
