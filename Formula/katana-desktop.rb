class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.30"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.30/KatanA-linux-x86_64.tar.gz"
  sha256 "7111cf26d24222c175f0f38cc12a763bca82aff8a7066a1e060dff6a13a373d8"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
