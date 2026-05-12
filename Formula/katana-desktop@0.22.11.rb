class KatanaDesktopAT02211 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.11"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.11/KatanA-linux-x86_64.tar.gz"
  sha256 "bf77841a95ab277a5a7496a8e10f70ff729463ed289114c1b1f7b2e3d413084c"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
