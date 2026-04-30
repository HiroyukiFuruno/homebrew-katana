class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-aarch64-apple-darwin.tar.gz"
      sha256 "df94f1cbbf1a7c1ce4ecbbd89a3936bd9e78fe2cc59d69a70c9f31f8118204df"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-apple-darwin.tar.gz"
      sha256 "1c1834675bb833e6159734e6b833f31fded3e394002636b7d4d87639ab6c12a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a3ce163f956e881c98f4df1c173554d415871e653b39ac97a18f00d005759bf"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
