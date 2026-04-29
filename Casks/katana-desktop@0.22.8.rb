cask "katana-desktop@0.22.8" do
  version "0.22.8"
  sha256 "d9b0715e4b59abddd7650b2337f25acce3a367f21d097f5a677ab66dde52658f"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.8/KatanA-Desktop-0.22.8.dmg"
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
