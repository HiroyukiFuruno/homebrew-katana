class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.2"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.2/KatanA-linux-x86_64.tar.gz"
  sha256 "da2f62bb7dd44a4ae79799ce57d94de5bd333d5b444d832477a2a4a0b020f31c"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
