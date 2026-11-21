# Homebrew tap for Ragdoll Mail

[Ragdoll Mail](https://erict16.github.io/ragdoll-mail/) is a free, open-source mail app for Mac and Windows with a command line that AI agents such as Claude Code and Codex can use.

## The app and the command

```sh
brew tap erict16/tap
brew trust erict16/tap
brew install --cask ragdoll-mail
```

Homebrew asks once to trust a tap that is not its own; that is the second line. You only need it once for both.

This installs the app and the `ragdoll` command. Update with `brew upgrade --cask ragdoll-mail`.

## Only the command

```sh
brew tap erict16/tap
brew trust erict16/tap
brew install ragdoll
```

This installs only `ragdoll`, the command line, with no app. It runs on Homebrew's Python and does not need an Apple signature, so macOS shows no warning. Update with `brew upgrade ragdoll`. If you already have the app from the cask, you have the command too and don't need this.

The cask and the formula are kept in sync with [packaging/homebrew](https://github.com/erict16/ragdoll-mail/tree/main/packaging/homebrew) in the main repository.

## Tuyi

[Tuyi (图译)](https://erict16.github.io/tuyi/) translates the text in DWG / DXF drawings into any language and writes it back into a new file. No AutoCAD needed. Apple silicon Macs only.

```sh
brew tap erict16/tap
brew trust erict16/tap
brew install --cask tuyi
```

This installs the app and the `tuyi` command. Tuyi is not notarized yet: the first time, right-click Tuyi in Applications and choose Open. Update with `brew upgrade --cask tuyi`.
