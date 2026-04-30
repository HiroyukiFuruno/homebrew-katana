class KmlAT0175 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.5"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.5/kml-v0.17.5-aarch64-apple-darwin.tar.gz"
      sha256 "3f430ec78d0542cf5e9b8200ebe60c77842663c0314cab527951dbe8266cf9a7"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.5/kml-v0.17.5-x86_64-apple-darwin.tar.gz"
      sha256 "d41769218c76baaf1e904080adcef9a7ee9f03b92b2bc75c387e955fce7745ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.5/kml-v0.17.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4325d8c8d46c80e93815f73c542f35f550632c61dccb6f0092d1c1a00bd76aa2"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
