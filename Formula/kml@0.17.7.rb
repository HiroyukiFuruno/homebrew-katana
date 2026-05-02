class KmlAT0177 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.7"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-aarch64-apple-darwin.tar.gz"
      sha256 "4bfca85b9436a517370e4f63c719d995904b83a02ab808576ac6772b62eba37b"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-apple-darwin.tar.gz"
      sha256 "89f2585631076d45a1ea8626a048aedef4ebbaca7697231261a45f564f9567f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f731b622348d1f5db73156b98e7ce9d6112b21fe43f54144ffec01bdc9680e8"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
