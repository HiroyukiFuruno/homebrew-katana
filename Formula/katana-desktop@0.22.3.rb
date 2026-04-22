class KatanaDesktopAT0223 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.3"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.3/KatanA-linux-x86_64.tar.gz"
  sha256 "e88bd003b04ab8e1e5dc97d8f96fe8c9011f73d49c274a9a7c4f45d257f81301"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
