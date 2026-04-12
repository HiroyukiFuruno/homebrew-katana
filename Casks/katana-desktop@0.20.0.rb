cask "katana-desktop@0.20.0" do
  version "0.20.0"
  sha256 "9868b9dcd0043321ed4ee7d19b9982c39147c3441775c494be4cd6067f2f0fcc"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.20.0/KatanA-Desktop-0.20.0.dmg"
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
