# Homebrew tap for Ragdoll Mail

[Ragdoll Mail](https://erict16.github.io/ragdoll-mail/) is a free, open-source mail app for Mac and Windows with a command line that AI agents such as Claude Code and Codex can use.

## The app and the command

```sh
brew tap erict16/tap
brew trust erict16/tap
brew install --cask ragdoll-mail
```

Homebrew asks once to trust a tap that is not its own; that is the second line.

This installs the app and the `ragdoll` command. Update with `brew upgrade --cask ragdoll-mail`.

## Only the command

```sh
brew install erict16/tap/ragdoll
```

This installs only `ragdoll`, the command line, with no app. It runs on Homebrew's Python and does not need an Apple signature, so macOS shows no warning. Update with `brew upgrade ragdoll`. If you already have the app from the cask, you have the command too and don't need this.

The cask and the formula are kept in sync with [packaging/homebrew](https://github.com/erict16/ragdoll-mail/tree/main/packaging/homebrew) in the main repository.
