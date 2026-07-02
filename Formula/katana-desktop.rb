class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.31"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.31/KatanA-linux-x86_64.tar.gz"
  sha256 "a6ec495631ac4c7821991a037097705bf074eabb1fcb4973548d18f75c3192bf"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
