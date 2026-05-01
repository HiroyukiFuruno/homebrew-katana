class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.7/kml-v0.18.7-aarch64-apple-darwin.tar.gz"
      sha256 "0c778624fc7580805cda4c5dfd9aca8fe950cf08dfbabf802d735cb7b73785f7"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.7/kml-v0.18.7-x86_64-apple-darwin.tar.gz"
      sha256 "7cf62f73a857aa8ba0626302cb6d72341998c1609b3ddd38451befd21643ac80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.7/kml-v0.18.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59906e0faef0a64f6debd3a2142a0c86c31e60835e70e3a11d2dde23882ea93c"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
