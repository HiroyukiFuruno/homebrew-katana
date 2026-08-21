class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.40"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.40/KatanA-linux-x86_64.tar.gz"
  sha256 "825e60e63c951482da8897365118652dded7262f9982e2936a1e2c74a2ed989a"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
