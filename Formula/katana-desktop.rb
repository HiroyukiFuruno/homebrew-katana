class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.1"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.1/KatanA-linux-x86_64.tar.gz"
  sha256 "0e1237fa69821fd6dd44cc3e3b18b4f07cb03a66d4593af40cd8bd4d84c5f969"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
