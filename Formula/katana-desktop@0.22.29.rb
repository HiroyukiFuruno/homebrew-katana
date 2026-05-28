class KatanaDesktopAT02229 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.29"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.29/KatanA-linux-x86_64.tar.gz"
  sha256 "3d64710482e3c643262c173511606fcc2afc6d06c72d6f6ff616394f5d300e56"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
