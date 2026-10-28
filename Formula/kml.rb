class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.0/kml-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "c9bba08dc6db694bf895b53af1872cd6b57e974628382e3e23759db80133e4b2"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.0/kml-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "02e58a18353c8a6b99cf2005bb60e19d14e7f3c156868586da7a77e27d3ebfbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.0/kml-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "985c2e08e03e1c4ac0f56c79ec34188a07e1682a55a72c6fd8a73e201516e5bf"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
