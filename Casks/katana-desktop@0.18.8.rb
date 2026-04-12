cask "katana-desktop@0.18.8" do
  version "0.18.8"
  sha256 "1e3c13781eef7f4e83a48f1ffbb78b34e03c35ed2eb6c92d14f133d114c3c479"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.8/KatanA-Desktop-0.18.8.dmg"
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
