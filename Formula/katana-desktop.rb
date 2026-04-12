class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.19.0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.19.0/KatanA-linux-x86_64.tar.gz"
  sha256 "a02da8eb7686054a6c3d2966e2dbef23548786117fdb168e300e6c2c390e0c2c"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
