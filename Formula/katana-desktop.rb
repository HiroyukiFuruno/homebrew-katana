class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.18"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.18/KatanA-linux-x86_64.tar.gz"
  sha256 "07dbfaef896a90ddf23e2c60acbb8ec8f89f68cda24da3c9b5f98d47c0313817"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
