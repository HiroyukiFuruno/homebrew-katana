cask "katana-desktop@0.18.5" do
  version "0.18.5"
  sha256 "d595e2640f8a394dcbb20488ad5962de059147a371baa6551b385944a30f0861"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.5/KatanA-Desktop-0.18.5.dmg"
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
