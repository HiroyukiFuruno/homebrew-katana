cask "katana-desktop" do
  version "0.22.44"
  sha256 "59847d86c9c20a2f563edff56668f310f4127128069bc222ff69b31326828e73"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.44/KatanA-Desktop-0.22.44.dmg"
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
