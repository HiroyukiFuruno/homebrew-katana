class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.47"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.47/KatanA-linux-x86_64.tar.gz"
  sha256 "d160139b5c2e54a16fd943eb4d167e6020d72a79b37fdfe8e15b1aaae517e6d7"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
