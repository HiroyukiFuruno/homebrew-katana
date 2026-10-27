class KmlAT0196 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.6"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.6/kml-v0.19.6-aarch64-apple-darwin.tar.gz"
      sha256 "352d9b915846bbd1b6b933d1b159e1a9040ed3f586b8100570964b65e872f357"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.6/kml-v0.19.6-x86_64-apple-darwin.tar.gz"
      sha256 "963eba5bd4d642c4fd23ba74b4008a4ea222f805643f161d7636d66dcdfec104"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.6/kml-v0.19.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c487b1e3c3a4ec86ca2e6b112c6b6a19308713dc27510bfc7c7d78a669d4e95d"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
