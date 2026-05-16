class KatanaDesktopAT02221 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.21"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.21/KatanA-linux-x86_64.tar.gz"
  sha256 "edb3fbbc53ab86cc0cdeeb702d528f9369891819b1f71f6eb1e9fd779df97c5a"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
