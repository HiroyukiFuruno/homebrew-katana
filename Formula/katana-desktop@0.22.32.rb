class KatanaDesktopAT02232 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.32"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.32/KatanA-linux-x86_64.tar.gz"
  sha256 "ecd1f0dfa877642dcbba96b1c0271acb2698ca70fd0e30b493f2199fedda9815"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
