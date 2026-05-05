cask "katana-desktop@0.22.11" do
  version "0.22.11"
  sha256 "40616302edb64b21924a3bace8c40ee0b5c02dd7360b9c4b7a2122c416bddeed"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.11/KatanA-Desktop-0.22.11.dmg"
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
