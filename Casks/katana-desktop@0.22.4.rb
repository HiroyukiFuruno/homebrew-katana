cask "katana-desktop@0.22.4" do
  version "0.22.4"
  sha256 "de2586c9327a41b62eeeaf09a6f4d1c7dc03f22396f48bab589360e13e71d450"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.4/KatanA-Desktop-0.22.4.dmg"
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
