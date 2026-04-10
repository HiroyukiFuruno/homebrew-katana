class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.4"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.4/KatanA-linux-x86_64.tar.gz"
  sha256 "f038035d4c839c335a9fc33f4ed1ff01ab32742fff98ce72920519afc5eae469"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
