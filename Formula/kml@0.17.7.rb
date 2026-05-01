class KmlAT0177 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.7"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-aarch64-apple-darwin.tar.gz"
      sha256 "0a0d11d9e2135680a019dc41d70a5aa5b8ca4b7344de40686fb83e05d1d21007"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-apple-darwin.tar.gz"
      sha256 "af76d9b88fd46a8c23dfc99c1140ae0ab956ea103384de5275577119501d5aa9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1057960baa923fb6132fe6310b909fd072758aa6b09c5c29e0ce4f6d083a64e3"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
