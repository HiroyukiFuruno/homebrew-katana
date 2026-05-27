class KatanaDesktopAT02228 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.28"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.28/KatanA-linux-x86_64.tar.gz"
  sha256 "919fa0acfd51fd4f91478c25b216f9e1b4c80b873a1ac72e6c589eead15522dc"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
