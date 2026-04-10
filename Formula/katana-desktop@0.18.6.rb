class KatanaDesktopAT0186 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.6"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.6/KatanA-linux-x86_64.tar.gz"
  sha256 "4fe5402dc5a69794ce5b683a4c38b0bdc3b5628eda708965fea9c9b185c2293b"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
