class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.29.0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.29.0/KatanA-linux-x86_64.tar.gz"
  sha256 "e6120a71a41c7d33af010df9ff6e2a865be664e3f899e3a49fe9a3651eb0da0e"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
