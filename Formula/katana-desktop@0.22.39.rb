class KatanaDesktopAT02239 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.39"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.39/KatanA-linux-x86_64.tar.gz"
  sha256 "59cef6a1a0fbdf83f3afdc9e127a5c29402eedf948642416748812a06bf8b5c5"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
    bin.install "kdv-office-worker"
  end
end
