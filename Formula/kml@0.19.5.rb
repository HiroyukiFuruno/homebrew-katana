class KmlAT0195 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.5"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-aarch64-apple-darwin.tar.gz"
      sha256 "398f8a88502f51a2693ec8abed2c364f17e2a74f0a18fe53538c4693232fd653"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-apple-darwin.tar.gz"
      sha256 "5b3e2404e63c092220fc32243553c71ac005dcc1793fca448d46283ffa8c46cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96bfd1fd8754cdf1bbe7cecf078da5f48324f652aa53c1dcaba00bf2924e9ab2"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
