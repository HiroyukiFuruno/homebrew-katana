cask "katana-desktop@0.22.36" do
  version "0.22.36"
  sha256 "b0f2044692ffa3ba73931ee7640d74c431d56e0707345f95bc5b65367a9272a5"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.36/KatanA-Desktop-0.22.36.dmg"
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
