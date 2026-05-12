class KatanaDesktopAT0200 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.20.0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.20.0/KatanA-linux-x86_64.tar.gz"
  sha256 "8b40249d7ab7542b063050f18708986e1edbabf07a867fc970714d7d8a9fa3a4"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
