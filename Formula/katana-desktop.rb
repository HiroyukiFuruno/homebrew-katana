class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.24"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.24/KatanA-linux-x86_64.tar.gz"
  sha256 "bae7a3a293d840b042ee208aa2f37e847bcee658a9bfc2c288220e777ac2d058"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
