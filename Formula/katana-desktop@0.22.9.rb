class KatanaDesktopAT0229 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.9"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.9/KatanA-linux-x86_64.tar.gz"
  sha256 "b926c603cdf1b383e0ab0301323837769e345735d7b12c9a5ca3256db2c21583"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
