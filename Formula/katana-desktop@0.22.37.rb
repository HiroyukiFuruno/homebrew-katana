class KatanaDesktopAT02237 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.37"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.37/KatanA-linux-x86_64.tar.gz"
  sha256 "39bda750535a6e7b10c87f08abd7ab28466bdd8abe73a6f471c189a366873a57"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
