class KatanaDesktop < Formula
  desc "Lightweight Markdown viewer with live preview, Mermaid diagrams, and syntax highlighting"
  homepage "https://github.com/HiroyukiFuruno/KatanA"
  version "0.22.8"

  url "https://github.com/HiroyukiFuruno/KatanA/releases/download/v0.22.8/KatanA-linux-x86_64.tar.gz"
  sha256 "0f9e2492ccbebb397fb1555fd956f64fab3f54e0a26b28082744aeb68928d847"

  depends_on :linux

  def install
    bin.install "KatanA" => "katana-desktop"
  end
end
