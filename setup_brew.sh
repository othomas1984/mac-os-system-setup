#!/bin/zsh

if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/owenthomas/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle
