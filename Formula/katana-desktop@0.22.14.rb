class KatanaDesktopAT02214 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.14"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.14/KatanA-linux-x86_64.tar.gz"
  sha256 "8eec165cbf70853859a1d97dd439ab108d743c5fdabc3022228028897f3f6d9d"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
