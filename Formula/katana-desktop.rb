class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.6"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.6/KatanA-linux-x86_64.tar.gz"
  sha256 "d298a550d601cf9977740e8a6bdcb0ad868195c4ea51b0ea6cc88a15ca7b3f16"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
