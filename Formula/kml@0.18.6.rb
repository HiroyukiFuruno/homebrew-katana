class KmlAT0186 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.6"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.6/kml-v0.18.6-aarch64-apple-darwin.tar.gz"
      sha256 "3fe744692f1b6326e27210642bbfa908d379124da96e07daa21ef16153ab14bc"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.6/kml-v0.18.6-x86_64-apple-darwin.tar.gz"
      sha256 "e812cbab74039b73d5756c65907e784a7a28644f73ec3c30aaed3a88254a0b99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.6/kml-v0.18.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ced45426c89eb827fd29c42aaa21ba5e2845663459ffea5c928b81ee4a40145"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
