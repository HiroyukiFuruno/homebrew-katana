cask "katana-desktop@0.22.40" do
  version "0.22.40"
  sha256 "55a99445c2dbb9368c71dd043e99e41d497f5b9e1938803f21ea624a87c70ee3"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.40/KatanA-Desktop-0.22.40.dmg"
  name "KatanA Desktop"
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"

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
