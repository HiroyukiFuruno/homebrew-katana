class Katana < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.0"

  if OS.linux?
    url "https://github.com/HiroyukiFuruno/KatanA/releases/download/0.18.0/KatanA-linux-x86_64.tar.gz"
    sha256 "31777b7e7de3a7ec3421b79733e283c14ae64114ff32136d05bb0d184d56f7e1"
  end

  def install
    if OS.linux?
      bin.install "KatanA"
    end
  end
end
