class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.0/kml-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "64f92e50312e6039c2d4501cef0b1ec53049a0dd3a3aac1cc4b5514284f20288"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.0/kml-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "f42f350e16f8824af39402baecec005fc27046f1c1b8156432166da7cd19b96e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.0/kml-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae164767995780e266dc1a7423d491ff19af3f13b25e9ed3928a3b50bebc8828"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
