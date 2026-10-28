cask "katana-desktop@0.22.28" do
  version "0.22.28"
  sha256 "fd8ace3a76996af86fb485788b8cd84369256bd37c5776a496006cac3a540eb7"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.28/KatanA-Desktop-0.22.28.dmg"
  name "KatanA Desktop"
  desc "Markdown viewer with live preview, Mermaid diagrams and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

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
