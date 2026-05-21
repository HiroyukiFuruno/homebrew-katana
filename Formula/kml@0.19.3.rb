class KmlAT0193 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.3"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.3/kml-v0.19.3-aarch64-apple-darwin.tar.gz"
      sha256 "9afc9d8541725a402baaa1b40eeb81a1e6e4dc3e93c472327cb40374e5d13af6"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.3/kml-v0.19.3-x86_64-apple-darwin.tar.gz"
      sha256 "7b63bb846570d6e68b03aa2cd4132d8d07806c44c6439e4ea7edc17c3507ede1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.3/kml-v0.19.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "908387aee06e8ce83f0fda89c74fbcdb86744e3cca180760f8f7387936a857e8"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
