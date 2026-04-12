cask "katana-desktop" do
  version "0.22.0"
  sha256 "41894ab1f8fcd4ba1ca4d91d82d866c59ceef40a3d762133b7d48be4dd3b6594"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.0/KatanA-Desktop-0.22.0.dmg"
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
