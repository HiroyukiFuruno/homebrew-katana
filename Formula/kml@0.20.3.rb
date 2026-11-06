class KmlAT0203 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.20.3"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.3/kml-v0.20.3-aarch64-apple-darwin.tar.gz"
      sha256 "ef81276bf0f47ff9b5727434528047f4189a0afa24e8ba9822952c34f01c9fac"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.3/kml-v0.20.3-x86_64-apple-darwin.tar.gz"
      sha256 "999ab3cc1de39db44d5fd34fb4691e0edec66b572acf222a7b7f8dbb146d44dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.3/kml-v0.20.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd01c30eb7e652c4ab9bc8c501cee7381e1f11c9ad8a9805fbfcfacc7b8e1fa3"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
