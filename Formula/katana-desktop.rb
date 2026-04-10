class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.5"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.5/KatanA-linux-x86_64.tar.gz"
  sha256 "6ffe85b0b9000620394235c4f2d40bcb5e9a00287a79ad233c7aa0a66e42a9b6"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
