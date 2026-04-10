class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.3"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.3/KatanA-linux-x86_64.tar.gz"
  sha256 "8ab882352cb6bdccdae2b988e5e0ca9160145d86da359d12ac35be413d8f2a29"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
