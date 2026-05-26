class KatanaDesktopAT02226 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.26"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.26/KatanA-linux-x86_64.tar.gz"
  sha256 "2e4441b46e1ac481a552e5ebf99fbf8a6630e8a444e95a3f8d9c90ac9f35cd39"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
