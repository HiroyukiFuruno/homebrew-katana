class KatanaDesktopAT02222 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.22"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.22/KatanA-linux-x86_64.tar.gz"
  sha256 "e066284d0193eaba5fef3e08e832d88b9288d40252610a38494cda64ed9befc8"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
