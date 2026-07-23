class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.36"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.36/KatanA-linux-x86_64.tar.gz"
  sha256 "c888ea984946d0f1e27e1876d465100af91b316120aff218064c01fe34f9a13b"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
