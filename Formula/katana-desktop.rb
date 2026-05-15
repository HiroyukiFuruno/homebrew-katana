class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.19"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.19/KatanA-linux-x86_64.tar.gz"
  sha256 "cb621a6c36e86f7e5a9578122ec65b7b8d35cdec9d7ff74002836d40c12de246"

  depends_on :linux

  link_overwrite "bin/katana-desktop"

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
