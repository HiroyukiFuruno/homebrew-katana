class KmlAT0184 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.4"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.4/kml-v0.18.4-aarch64-apple-darwin.tar.gz"
      sha256 "2ce94ed825967d239dff35b4c840c78f5375a6fa7e37cf656a317c8fa9e7faf4"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.4/kml-v0.18.4-x86_64-apple-darwin.tar.gz"
      sha256 "834ececfa6bf2ef0cb41bf6ad401f1e434b9882dc7bf5c1ee44c715bd9377013"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.4/kml-v0.18.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fbe1ef7abbcb24d6f8b0a3d829fbea8121e15e61e2bbf9f50c3f819ae2bdbe0"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
