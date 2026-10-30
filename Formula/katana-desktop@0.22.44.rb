class KatanaDesktopAT02244 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.44"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.44/KatanA-linux-x86_64.tar.gz"
  sha256 "8c1985d07682a9a4d84adc10846678e954720364159435123cdade8f6737252b"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
