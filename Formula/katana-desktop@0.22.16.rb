class KatanaDesktopAT02216 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.16"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.16/KatanA-linux-x86_64.tar.gz"
  sha256 "0fb5e1ffbc5a7528ed0b5412facae377d96343e8ca4238d0d9787c44027a5185"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
