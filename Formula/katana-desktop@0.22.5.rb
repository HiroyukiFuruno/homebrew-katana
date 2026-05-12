class KatanaDesktopAT0225 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.5"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.5/KatanA-linux-x86_64.tar.gz"
  sha256 "ea2be8f1a516757595e68b5dee32a111156e5696712b4c523be4451432d3ad11"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
