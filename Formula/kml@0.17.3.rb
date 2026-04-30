class KmlAT0173 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.3"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.3/kml-v0.17.3-aarch64-apple-darwin.tar.gz"
      sha256 "d7ae06f36e3865ee17aed357befa301378febafb70e39a145a402a47ac232bb2"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.3/kml-v0.17.3-x86_64-apple-darwin.tar.gz"
      sha256 "87d7835c91b0c696c9ef71931f0ccb178c390382ee51f851ed7831f95b13c05b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.3/kml-v0.17.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b69e34d51397314337200ee424895e77c79de2256bf5c216bbf83274e0a95cc5"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
