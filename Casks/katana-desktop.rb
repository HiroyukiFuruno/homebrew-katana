cask "katana-desktop" do
  version "0.22.10"
  sha256 "efdd5fb70ca46f39383f28103276dbe1dd63c9c2b6126509ebcf37351b4d4b71"

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
