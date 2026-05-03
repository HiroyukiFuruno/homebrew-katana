class KmlAT0182 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.2"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.2/kml-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "6c74fef049b92fa67d818ba63f0a1e18b994ed3f2a4c53ebdd24b00baff30d9f"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.2/kml-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "a193babff12bcde67802a1f004bd69e128b71e5119fe9b1362e26ba6f05374dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.2/kml-v0.18.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd7fb255ae4c7dcee902fade5ce9d91aff36e4f126a337ea9de95b373b571d91"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
