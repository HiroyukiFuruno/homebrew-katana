class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.9"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.9/KatanA-linux-x86_64.tar.gz"
  sha256 "e80dd1fd1b6979201d08a1471e3510c59f93e3512d256ff36563d7a62ed22698"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
