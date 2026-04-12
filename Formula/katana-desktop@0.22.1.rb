class KatanaDesktopAT0221 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.1"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.1/KatanA-linux-x86_64.tar.gz"
  sha256 "3fffd067b306c32429f56f71fd2b8bc68426ee80d476af8721856b2688bfcf44"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
