class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.1/kml-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "f19b39464cfeaece83bd5602a1ded1eaf3073f4cd84be063f4819b30620816d7"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.1/kml-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "7602dfaf6d6cd5f7173f73d76503a38acb48fe8c73ea296a0dcb17993fc07670"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.18.1/kml-v0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff3207ca464938109075da1da3cfa450b94521c51526239aa27d555f7fb82683"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
