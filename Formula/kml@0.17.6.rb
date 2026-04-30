class KmlAT0176 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.6"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-aarch64-apple-darwin.tar.gz"
      sha256 "ad28c0057fe21e34542b3741d4c279412724d9eb9483fce06c28be5696365fab"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-apple-darwin.tar.gz"
      sha256 "e561afe6675efad35da7a403f88ccf6543b7a8376b7a5d0bfdf4cac96fe57a87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.6/kml-v0.17.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9495352f92053cda931d7bf9388ec0e8ffb86fc5f6ace7eadffa257fc6d2d27"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
