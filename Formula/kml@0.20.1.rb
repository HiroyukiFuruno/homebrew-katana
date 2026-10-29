class KmlAT0201 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.20.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.1/kml-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "5d02fe6187647cb2f62dc84b88f7be8030096a075accadf0c32779f81a106894"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.1/kml-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "cf47993f0688084f94219083929569c7d7956263250072a1f95aedb856adcb85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.1/kml-v0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e44e8409820cbe8483ae89c0af558ab64d047714c1510dcd5f55626665b7335b"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
