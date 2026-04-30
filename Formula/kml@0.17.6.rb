class KmlAT0176 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.6"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-aarch64-apple-darwin.tar.gz"
      sha256 "398418b9dfa9351c26dcd05a4d9b6a84b46ec5e1865f018f5e0f752bf4ef865b"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-apple-darwin.tar.gz"
      sha256 "62d0ce84086b98c9fde483337102ed68cf7026719bb4976f0ff0e14461d8011b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33885006de0df19306dcab3813648915f54250d5f957ef5a3c6fa2fd32a5c3ee"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
