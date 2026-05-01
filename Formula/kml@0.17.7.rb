class KmlAT0177 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.7"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-aarch64-apple-darwin.tar.gz"
      sha256 "36a6cfbc99c443f1a39c9f946b2e909dc204a37c906a5c4e47d77f4249af3200"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-apple-darwin.tar.gz"
      sha256 "46796fa9a2bd34659ac24f250236a141182d21f9fdcddbbb1ed3a167caf7d73a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8867ca655938e6fdb7ae0c0be2bc8b41c5a953443baf0c087a397654df63fcb1"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
