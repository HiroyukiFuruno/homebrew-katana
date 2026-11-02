cask "katana-desktop" do
  version "0.22.47"
  sha256 "32f7d255996860a3d6d2bce1150abe13c454aa7e83e4dfbc9a1bd958859121e5"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.47/KatanA-Desktop-0.22.47.dmg"
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
