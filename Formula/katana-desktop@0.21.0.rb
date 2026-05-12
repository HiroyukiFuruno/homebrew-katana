class KatanaDesktopAT0210 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.21.0"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.21.0/KatanA-linux-x86_64.tar.gz"
  sha256 "14ea2dca4d84d091c1503efe1fef729d784b39b54bcab91671e490e0f83dd404"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
