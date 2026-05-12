cask "katana-desktop@0.22.15" do
  version "0.22.15"
  sha256 "4916099b523e8cfffc2d2ba408cb3e9f2c4babea3dcb8e2ff0ec63d3fde34cec"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.15/KatanA-Desktop-0.22.15.dmg"
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
