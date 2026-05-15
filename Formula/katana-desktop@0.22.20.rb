class KatanaDesktopAT02220 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.20"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.20/KatanA-linux-x86_64.tar.gz"
  sha256 "98da32cb69d62bcd2f2a5c86a4b2cdc110bba54b9f2a5729e5ea7397afb68122"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
