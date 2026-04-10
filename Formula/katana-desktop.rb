class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.18.1"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.18.1/KatanA-linux-x86_64.tar.gz"
  sha256 "1cb35cb58276087e195c260f7b289f483ae9a1ab9674f8d770c096c348e0f985"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
