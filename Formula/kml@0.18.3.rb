class KmlAT0183 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.3"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.3/kml-v0.18.3-aarch64-apple-darwin.tar.gz"
      sha256 "77686830285ae2886f3b8adace59f1d4c0c5eb3cedfd3b4d67c9a664de991047"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.3/kml-v0.18.3-x86_64-apple-darwin.tar.gz"
      sha256 "9bc1ee887914478781d5c68c28b550e71eabb4145eaaa67b70d1a69bba72430e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.3/kml-v0.18.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d133b3dada6617bc323f77d56bccad023bbcbea94f25816013a9b81bb4335230"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
