class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.2"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.2/KatanA-linux-x86_64.tar.gz"
  sha256 "e05d1ea4afc9579434a5262140ed48fb76507d6baf2db983317fe1afd8c0e0d4"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
