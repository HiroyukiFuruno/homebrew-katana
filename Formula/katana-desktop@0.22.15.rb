class KatanaDesktopAT02215 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.15"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.15/KatanA-linux-x86_64.tar.gz"
  sha256 "7bc041899fc29db7ed440345157a70b51ab1117e1a36c67401d6691e8a5d7cf8"

  depends_on :linux

  def install
    bin.install "KatanA"
  end
end
