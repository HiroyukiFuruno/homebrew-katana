class KatanaDesktopAT02225 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.25"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.25/KatanA-linux-x86_64.tar.gz"
  sha256 "61ad38fa84565dc429b3b842eb60f29effcd289bde78db6310733ea5d9324725"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
