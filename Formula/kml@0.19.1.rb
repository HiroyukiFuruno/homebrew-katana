class KmlAT0191 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.1"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.1/kml-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "0d41a881cc5dcec7a6752a7bac108515753ee4d2bb68a9136bbe5958414c2753"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.1/kml-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "9a34c63cab296f62a989349aa9b1efc7db6d552196584b78c188fa742395d1f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.1/kml-v0.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "252fdd9f0ff56eb7731e8a612c74da0d1e6965bfa2cd38000ce33f1d0a58556f"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
