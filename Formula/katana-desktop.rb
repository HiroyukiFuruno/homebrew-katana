class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.17"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.17/KatanA-linux-x86_64.tar.gz"
  sha256 "e430a5126f1efd5e13bb9218ffbe7374b57ea3445ac3a4ff9a255615a2264e64"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
