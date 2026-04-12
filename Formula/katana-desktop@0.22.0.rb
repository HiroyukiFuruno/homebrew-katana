class KatanaDesktopAT0220 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.0/KatanA-linux-x86_64.tar.gz"
  sha256 "1513b7e4a824abeff9f10be4f53a466282a13380dbfc89fc4d4e6db9d2206951"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
