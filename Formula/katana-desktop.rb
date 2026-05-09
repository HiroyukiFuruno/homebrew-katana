class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.12"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.12/KatanA-linux-x86_64.tar.gz"
  sha256 "ea28857670df43fc4567e25aab870fce13bb1b44230754b0de81b22334588742"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
