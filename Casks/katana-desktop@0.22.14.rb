cask "katana-desktop@0.22.14" do
  version "0.22.14"
  sha256 "532eed1c98fbd0580fd1af97a2cfd353b187fff7596f769dfbf773a59ca890aa"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.14/KatanA-Desktop-0.22.14.dmg"
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
