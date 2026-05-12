class KatanaDesktopAT0224 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.4"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.4/KatanA-linux-x86_64.tar.gz"
  sha256 "f084cb2932aff7294e1bd90de1a63ca11db69bf98c845ba5eefe02df7827c140"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
