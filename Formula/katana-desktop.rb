class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.27"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.27/KatanA-linux-x86_64.tar.gz"
  sha256 "407b5b9c72307ef5b0c8b9237fd778a73e28417e91bf28265de56744947fbfe2"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
