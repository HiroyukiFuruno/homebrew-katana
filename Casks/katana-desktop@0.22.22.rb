cask "katana-desktop@0.22.22" do
  version "0.22.22"
  sha256 "16f01c5c42d22cf6efe44063622f58afdcf362847eaa924cf3efe144cd00c05f"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.22/KatanA-Desktop-0.22.22.dmg"
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
