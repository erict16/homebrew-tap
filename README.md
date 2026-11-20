# Homebrew tap for Ragdoll Mail

[Ragdoll Mail](https://erict16.github.io/ragdoll-mail/) is a free, open-source mail app for Mac and Windows whose search finds the mail.

```sh
brew tap erict16/tap
brew trust erict16/tap
brew install --cask ragdoll-mail
```

Homebrew asks once to trust a tap that is not its own; that is the second line.

This installs the app and the `ragdoll` command. Update with `brew upgrade --cask ragdoll-mail`.

The cask is kept in sync with [packaging/homebrew](https://github.com/erict16/ragdoll-mail/tree/main/packaging/homebrew) in the main repository.
