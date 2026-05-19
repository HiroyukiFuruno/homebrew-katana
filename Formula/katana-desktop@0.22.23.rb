class KatanaDesktopAT02223 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.23"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.23/KatanA-linux-x86_64.tar.gz"
  sha256 "cd9360c0bad4faacabc089fa91f1677ce69460acac9f0e7a9f13bbb55c974274"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
