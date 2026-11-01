class KatanaDesktopAT02246 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.46"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.46/KatanA-linux-x86_64.tar.gz"
  sha256 "aa9dd4db23aa9cba66e916066672f6872df30a5a6f14c5a93efb3810523da58a"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
