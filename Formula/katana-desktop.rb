class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.8"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.8/KatanA-linux-x86_64.tar.gz"
  sha256 "f7818277d80d50a8e3f60b73c17a78b5edc647a0e89aa9cdd225c687a0665fd4"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
