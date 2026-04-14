class KatanaDesktopAT02211 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.1-1"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.1-1/KatanA-linux-x86_64.tar.gz"
  sha256 "c63c39eb64817af614e3930b028de04b12cd88ddd900bd7be75524937550346d"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
