cask "katana-desktop@0.22.7" do
  version "0.22.7"
  sha256 "9cd78591a773b675a2ddd5f04110ed23658609f3747e35aaa6e4c47b828e6f01"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.7/KatanA-Desktop-0.22.7.dmg"
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
