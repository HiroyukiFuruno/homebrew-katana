class KmlAT0174 < Formula
  desc "Markdownlint-compatible Markdown linter library and CLI"
  homepage "https://github.com/HiroyukiFuruno/katana-markdown-linter"
  version "0.17.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.4/kml-v0.17.4-aarch64-apple-darwin.tar.gz"
      sha256 "b7f3cfe28ab50113cea0a216a78914830c5dc82e0c1c7f8df884f20223e0a17d"
    end
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.4/kml-v0.17.4-x86_64-apple-darwin.tar.gz"
      sha256 "a05f6e5c2ee2a4ce07d71fd0315ad03e0d180e298a39f93fc3cda6e50ee5a890"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HiroyukiFuruno/katana-markdown-linter/releases/download/v0.17.4/kml-v0.17.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e12ed640d0a2ec356c7bab11269ba805e0e9afaa6fbde4df70a0da95dfa137fc"
    end
  end

  def install
    bin.install "kml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kml --version")
  end
end
