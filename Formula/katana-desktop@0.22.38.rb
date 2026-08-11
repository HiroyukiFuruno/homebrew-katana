class KatanaDesktopAT02238 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.38"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.38/KatanA-linux-x86_64.tar.gz"
  sha256 "6b1f31ae4df6f6ac36eccb267e013ee9a267c115c2b7b866de64f88d95cf0910"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
