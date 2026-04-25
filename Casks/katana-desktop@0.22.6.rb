cask "katana-desktop@0.22.6" do
  version "0.22.6"
  sha256 "b97a90257cda384b47efe3d7f8d28e7821a00df01d2d876a1f71a98480b667da"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.6/KatanA-Desktop-0.22.6.dmg"
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
