<p align="center">
  <img src="https://github.com/HiroyukiFuruno/KatanA/raw/master/assets/icon.iconset/icon_128x128.png" width="96" alt="KatanA">
</p>

<h1 align="center">homebrew-katana</h1>

<p align="center">
  Homebrew tap for <a href="https://github.com/HiroyukiFuruno/KatanA">KatanA Desktop</a> and <a href="https://github.com/HiroyukiFuruno/katana-markdown-linter">kml</a>.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/homebrew-tap-orange?logo=homebrew" alt="Homebrew Tap">
  <img src="https://img.shields.io/badge/platform-macOS%20%7C%20Linux-lightgrey" alt="Platform">
  <a href="https://github.com/HiroyukiFuruno/KatanA/blob/master/LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT"></a>
</p>

## Tap

```sh
brew tap HiroyukiFuruno/katana
```

---

## KatanA Desktop

A fast, lightweight Markdown workspace built with Rust.

**macOS** (GUI app via cask):

```sh
brew install --cask katana-desktop
```

**Linux** (CLI binary via formula):

```sh
brew install katana-desktop
```

Update:

```sh
# macOS
brew upgrade --cask katana-desktop
# Linux
brew upgrade katana-desktop
```

Uninstall:

```sh
# macOS
brew uninstall --cask katana-desktop
# Linux
brew uninstall katana-desktop
```

---

## kml

Markdownlint-compatible Markdown linter CLI. Supports macOS (ARM64 & Intel) and Linux (Intel).

Install the latest version:

```sh
brew install kml
```

Update:

```sh
brew upgrade kml
```

Install a pinned version:

```sh
brew install kml@0.17.4
```

Versioned formulae are keg-only and available from `kml@0.17.1` onward.
`kml@0.17.2` is intentionally omitted as it was not published to npm or PyPI.

Uninstall:

```sh
brew uninstall kml
```
