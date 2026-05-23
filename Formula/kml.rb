class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.4/kml-v0.19.4-aarch64-apple-darwin.tar.gz"
      sha256 "5a6dbedfd3a32a081a53c575cee2ae1d3d616de81e9641aa0c252d136410de47"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.4/kml-v0.19.4-x86_64-apple-darwin.tar.gz"
      sha256 "0046b61d09173f10b11cb10e36e25503be527182b8f17db37322e1b9fc715caa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.4/kml-v0.19.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea337721b1a33b9287cbac9a8df68af504de559bae67a340a2ef09a49442c591"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
