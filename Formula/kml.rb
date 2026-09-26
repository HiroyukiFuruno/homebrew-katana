class Kml < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-aarch64-apple-darwin.tar.gz"
      sha256 "5dba47dad20b03bd1d0729c9a0e95f91efe5b4d7f1067bbb77d67dc83ddbb75d"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-apple-darwin.tar.gz"
      sha256 "1f649a7f87ba8b04ddd28711615574ca51c4a8204645004123500af771640dce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "481f64f86ae3507629ba260f0ad929ba3dfd7b1bbfb4dd0f61346042235b4352"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
