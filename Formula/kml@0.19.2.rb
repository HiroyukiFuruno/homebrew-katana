class KmlAT0192 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.19.2"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.2/kml-v0.19.2-aarch64-apple-darwin.tar.gz"
      sha256 "90a06718236326978d1d2e69618dfe7965acb4967681617ac47ed6d2f451fdad"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.2/kml-v0.19.2-x86_64-apple-darwin.tar.gz"
      sha256 "558f7d3c101f2e57886017365b83aff92be18d682440148637e676f35daa801e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.19.2/kml-v0.19.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c63af078314174ad12b6f92d7d05112900952bdc1762cf810bfa307c32fb775c"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
