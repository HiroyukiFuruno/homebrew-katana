cask "katana-desktop@0.29.0" do
  version "0.29.0"
  sha256 "0d35fb1baf57508b06b1f191629482143415dc227748d3d7299bfd638b214275"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.29.0/KatanA-Desktop-0.29.0.dmg"
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
