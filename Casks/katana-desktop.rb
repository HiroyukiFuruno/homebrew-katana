cask "katana-desktop" do
  version "0.22.46"
  sha256 "f5b986ead638576d235ada642e5f3d2687d5761fa52ad5c2670fb7f400ddd8ae"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.46/KatanA-Desktop-0.22.46.dmg"
  name "KatanA Desktop"
  desc "Markdown viewer with live preview, Mermaid diagrams and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "KatanA Desktop.app"

  # Remove quarantine attribute (required for ad-hoc signed apps without Apple notarization)
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/KatanA Desktop.app"]
  end

  zap trash: [
    "~/Library/Caches/com.katana.desktop",
    "~/Library/Preferences/com.katana.desktop.plist",
  ]
end
