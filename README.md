# codebend3r/homebrew-tap

Homebrew casks for [maester](https://github.com/codebend3r/maester)'s apps.

## Raven

Raven, the desktop video player, for Macs with Apple silicon:

```sh
brew tap codebend3r/tap
brew trust codebend3r/tap
brew install --cask raven
```

Homebrew refuses to load a cask from a tap you haven't trusted, so `brew trust` comes first.

Upgrade with `brew upgrade --cask raven`, remove with `brew uninstall --cask raven` (add `--zap` to delete its settings and downloads too).

Until Raven's releases are signed with a Developer ID and notarized, macOS blocks the first launch. Open System Settings, then Privacy & Security, and choose Open Anyway beside Raven. You only do this once.

`Casks/raven.rb` is updated by maester's desktop release workflow on every `vX.Y.Z` tag; don't edit its `version` or `sha256` by hand.
