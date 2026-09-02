# Homebrew tap for Leaner

[Leaner](https://leaner-app.github.io/releases/) is a macOS app that safely cleans your disk and
uninstalls unused apps. Signed with a Developer ID and notarized by Apple.

## Install

```bash
brew install --cask leaner-app/tap/leaner
```

To update to the latest published version:

```bash
brew upgrade --cask leaner
```

And to remove it, preferences included:

```bash
brew uninstall --zap --cask leaner
```

This repository only holds the cask; the binaries are downloaded from the
[official releases](https://github.com/leaner-app/releases/releases).
