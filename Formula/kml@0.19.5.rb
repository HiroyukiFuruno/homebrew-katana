class KmlAT0195 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.5"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-aarch64-apple-darwin.tar.gz"
      sha256 "ccb4df5aa8fd4eac69e3dee3ef7d8914fefd65e04fc38e0fe4f58f6b48e91e57"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-apple-darwin.tar.gz"
      sha256 "000a13808af4b86f9203e2aa3e3444b748eaebe87ea80845ee8d1ebe7265f87c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.5/kml-v0.19.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc9204c6203578d2fe871514274c9a8d3509f2bf06af6571c208d35be653614c"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
