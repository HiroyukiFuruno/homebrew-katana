class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.41"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.41/KatanA-linux-x86_64.tar.gz"
  sha256 "2039d888aed603df0b7df5a40ba29e666d3ad8dbe829bdec1ebc896fa1638da7"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
