cask "katana-desktop@0.22.34" do
  version "0.22.34"
  sha256 "1deefe8894876e63de7b271a02a553d2f4c68bdcebd4b920080749ef1eaa9db0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.34/KatanA-Desktop-0.22.34.dmg"
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
