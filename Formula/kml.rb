class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.5/kml-v0.18.5-aarch64-apple-darwin.tar.gz"
      sha256 "88394d3fffeef610487d9356bd043c1c8a31f9d26a6613facf9d0060e13ec448"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.5/kml-v0.18.5-x86_64-apple-darwin.tar.gz"
      sha256 "28f89aef29c9dba87056dd0bad7bee3412011455edde4032ff337b6549dd96ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.5/kml-v0.18.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ba16f70f0079f4bff21ea27261f44be6f131d1cc2a141fc4c6202294819f860"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
