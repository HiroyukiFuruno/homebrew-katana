cask "katana-desktop" do
  version "0.22.17"
  sha256 "6f58f6bb2e242cc7b44f465bb7578fe3990d20bf27c03588a0c2f5b0f87a7e75"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.17/KatanA-Desktop-0.22.17.dmg"
  name "KatanA Desktop"
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

  livecheck do
    url :url
    strategy :github_latest
  end

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
