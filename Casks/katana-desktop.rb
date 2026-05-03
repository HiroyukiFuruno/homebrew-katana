cask "katana-desktop" do
  version "0.22.10"
  sha256 "907c85de1d03e9c10036540d4084cc488507bd7653d95f1ef77fb2d03984513d"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.10/KatanA-Desktop-0.22.10.dmg"
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
