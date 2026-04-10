class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.1"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.1/KatanA-linux-x86_64.tar.gz"
  sha256 "d06155585d72d399964f8e5beccd555403081795dec34888559d1ab08ef86c07"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
