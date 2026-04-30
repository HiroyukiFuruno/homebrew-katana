class KmlAT0171 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.1/kml-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "ccf5b87f3c9374c4f3e0c13ef440747c459637ef74fabb24048b1dafde417a9a"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.1/kml-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "abdeb664794ef63156a8480da02571a97faf6f472e9ba33b6a7099f12383fb36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.1/kml-v0.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f6d271d2daefa9374094f75961e900ba447dc6d0662b745c5f8f32cd5ace778"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
