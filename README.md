# DrHelius Homebrew Tap

Install SMAC Launcher on macOS:

```sh
brew install --cask drhelius/drhelius/smac-launcher
```

Or add the tap first:

```sh
brew tap drhelius/drhelius
brew install --cask smac-launcher
```

| Cask | Application |
| --- | --- |
| `smac-launcher` | [SMAC Launcher](https://github.com/drhelius/smac-gog-mac-launcher): Alpha Centauri and Alien Crossfire on Apple Silicon and Intel Macs |

SMAC Launcher requires macOS 13 or later and your own GOG Planetary Pack. Apple Silicon also requires Rosetta. The cask installs the signed, notarized universal app from GitHub Releases.

Update with `brew update` followed by `brew upgrade --cask smac-launcher`. Uninstalling the cask preserves installed game files, mod configurations and saves.
