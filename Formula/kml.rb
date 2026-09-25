class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-aarch64-apple-darwin.tar.gz"
      sha256 "021b1e48b9d2fb18680b6262ba0ae10ba243a9d07874ed9111e47e76109e98e7"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-apple-darwin.tar.gz"
      sha256 "9358ca63f8add3b13bfe0ec8af11950602d25047189270705c8064074067aae0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66d8b9af2cba8f524eedda5c937ea673cb62e9fa8b7a7fcd06c475dd4a6bc4ec"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
