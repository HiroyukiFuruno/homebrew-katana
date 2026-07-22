class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.35"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.35/KatanA-linux-x86_64.tar.gz"
  sha256 "389b6faf8f844ae585a64174849432fd984bf65e12f3e6399a6a0da66a3c061b"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
