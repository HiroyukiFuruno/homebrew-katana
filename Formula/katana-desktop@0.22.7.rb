class KatanaDesktopAT0227 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.7"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.7/KatanA-linux-x86_64.tar.gz"
  sha256 "ca51846d7e453143c614e316d45ab3557e3e9b8e17912560e53ce32ddab569cc"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
