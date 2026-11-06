class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.2/kml-v0.20.2-aarch64-apple-darwin.tar.gz"
      sha256 "33aa7085b9feed5630b05fac47146ac87ed7f9db7f335d2000252716c36214a5"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.2/kml-v0.20.2-x86_64-apple-darwin.tar.gz"
      sha256 "8330a7a32268f9c511bf9984f8fb516bb0418aed10a8edc26c9193941dfced60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.20.2/kml-v0.20.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09ef289a12c2189f2da87224eb859761f4773e60c4addcf6a4cbae437c44b68a"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
