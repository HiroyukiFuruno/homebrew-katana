class KatanaDesktopAT02210 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.10"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.10/KatanA-linux-x86_64.tar.gz"
  sha256 "602da27b91cb67e991d5c1ffa3fa9065721870efd757377d228a7de6f9412ec8"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
