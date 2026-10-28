class KatanaDesktopAT02242 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.42"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.42/KatanA-linux-x86_64.tar.gz"
  sha256 "53024e279495e0e6607273cfbd7633ef16c6e11784c37449c35ac556cfecf555"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
