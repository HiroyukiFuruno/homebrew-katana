class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.0/KatanA-linux-x86_64.tar.gz"
  sha256 "22b29ac3be3fac02cb4fc4eac5f074c9c6f298aa13d3eea3ecd9bc171dea3050"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
