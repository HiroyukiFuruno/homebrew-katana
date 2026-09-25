class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-aarch64-apple-darwin.tar.gz"
      sha256 "070135480b090defdb44d0aba7eff5cb716061dc99892c69a6e9ab43a4294c52"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-apple-darwin.tar.gz"
      sha256 "ec213dcaea7826343c738285c8ee3b1474b942874ea302c175fb7b5b8a93381c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fc6a9026ce7d02597e64f4e9928b723dec33e4a3ff5860c6a65f27300cb8b63"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
