class KmlAT0180 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.0/kml-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "df86895a9f648b803f06d0da08e6996674cf8d3fcddbbd3e5e4706fe4823612f"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.0/kml-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "05e94742ae6e7f9dbbb7bd3b8f077fa1e21ac1ac2f2454728abfb1e906548a92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.0/kml-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f25c066df7634baf4c98764949c0e757b2d71c8b1ce59a0b5ec9ac1ebfcd3694"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
