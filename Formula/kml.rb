class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-aarch64-apple-darwin.tar.gz"
      sha256 "25f5bcd9e5c970df97d7d42befb6f3136940797a48ab6c8e8643a190f5d0706d"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-apple-darwin.tar.gz"
      sha256 "a9e1d901b647ffd9921bab878d1a55d8765147fa2931f450ea2d04e2ffca5de9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df6bd183c353eea2abed4959b2a7101b91b1914d9d305fa2c1111d6948f302cb"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
