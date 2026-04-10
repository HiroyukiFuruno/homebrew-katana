cask "katana-desktop@0.18.1" do
  version "0.18.1"
  sha256 "b10249222341162ac07a9edcf3b85246102155b398e62025f1abfd0f3dde5b7b"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.1/KatanA-Desktop-0.18.1.dmg"
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
