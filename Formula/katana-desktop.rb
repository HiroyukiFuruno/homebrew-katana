class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.45"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.45/KatanA-linux-x86_64.tar.gz"
  sha256 "9061d1f98fee376fd596fa2d6adb4e5d53d1dca3d05acce2d10f5092603c0510"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
