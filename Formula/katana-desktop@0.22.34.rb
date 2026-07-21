class KatanaDesktopAT02234 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.34"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.34/KatanA-linux-x86_64.tar.gz"
  sha256 "83bd60649de9d9c69c78a9e36bb6ac7814ec54771d7c06dc2430811e504d54ae"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
