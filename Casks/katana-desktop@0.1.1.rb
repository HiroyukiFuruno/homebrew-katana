cask "katana-desktop@0.1.1" do
  version "0.1.1"
  sha256 "63cf7b55d6c74727e282f7f29bb238823c69a9742719ae0041d5bde38d1acc93"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v#{version}/KatanA-Desktop-#{version}.dmg"
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
