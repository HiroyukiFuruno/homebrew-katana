cask "katana-desktop@0.22.9" do
  version "0.22.9"
  sha256 "3973e2f6abb0c42f4d5c8a61f98014cfba8b61f2d281e373d46f6445eb48514d"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.9/KatanA-Desktop-0.22.9.dmg"
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
