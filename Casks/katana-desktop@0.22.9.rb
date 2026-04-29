cask "katana-desktop@0.22.9" do
  version "0.22.9"
  sha256 "06528fc21074ef41f7e81bc82c047ec8adaa674aec451bb02ad5304bc455f00a"

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
