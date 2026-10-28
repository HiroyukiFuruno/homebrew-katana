cask "katana-desktop@0.22.42" do
  version "0.22.42"
  sha256 "757a5a503170d351c91f436496b73c3e3c800f1b86614cc2ef3ec34f0df889fb"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.42/KatanA-Desktop-0.22.42.dmg"
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
