class KatanaDesktopAT02213 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.13"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.13/KatanA-linux-x86_64.tar.gz"
  sha256 "f6b7ff1ace42e26002bf8f38610f2e83559028c392de99326c5e574275a23faf"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
