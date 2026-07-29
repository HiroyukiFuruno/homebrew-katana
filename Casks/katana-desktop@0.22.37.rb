cask "katana-desktop@0.22.37" do
  version "0.22.37"
  sha256 "2eeb96bb482cf66ffe2a072217ef1bf93ac5e4b739a3cccb388f3c7791beb21f"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.37/KatanA-Desktop-0.22.37.dmg"
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
