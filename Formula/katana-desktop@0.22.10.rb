class KatanaDesktopAT02210 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.10"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.10/KatanA-linux-x86_64.tar.gz"
  sha256 "14eff0087c7e541b9e9d9ae0cbf7cd9afb5417d228eb7a0b436f34b6a7363810"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
