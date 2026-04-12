class KatanaDesktopAT0187 < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.7"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.7/KatanA-linux-x86_64.tar.gz"
  sha256 "f072ce024febabf7e238e661257c3b881915f7f1391f519065cc09ba7238a440"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
