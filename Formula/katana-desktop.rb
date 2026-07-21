class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.33"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.33/KatanA-linux-x86_64.tar.gz"
  sha256 "0012dc7a80b83c563d40a40cd85d9191885b9889adf917ddc7b8b6ddcbbf26b1"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
