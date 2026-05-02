class KmlAT0177 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.7"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-aarch64-apple-darwin.tar.gz"
      sha256 "fd5b5aadb9d42bb15b00cc583d220616c1156efade72895351f30f7b9f283338"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-apple-darwin.tar.gz"
      sha256 "523a05f492eb36ec84430d8da89ab4d40f291b51f4b1622ae66be91bba8865d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.7/kml-v0.17.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53c55aea75496be41a16325423457c4fb8111c776d49f32c7228f52f56d6d85e"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
