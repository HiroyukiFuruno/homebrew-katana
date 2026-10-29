class KatanaDesktopAT02243 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.43"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.43/KatanA-linux-x86_64.tar.gz"
  sha256 "7e3e7e169c50ebfefd85084d6168a251603a93301f1f6d4fed0b1e239a273435"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
