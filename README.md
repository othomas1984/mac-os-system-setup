# Setup Scripts for a New Dev Machine

Basic steps for a clean install

```zsh
mkdir ~/github

cd ~/github
git clone https://github.com/othomas1984/mac-os-system-setup

cd mac-os-system-setup
./setup_all.sh
```
# Specific scripts

## Setup All

Calls these in order
* setup_brew.sh
* setup_zsh.sh
* setup_ruby.sh

## Setup Brew
1) Installs Brew
2) Runs `brew bundle` to install everything in the [BrewFile](Brewfile)

## Setup zsh
1) Copies [.zshrc](.zshrc) to ~/.zshrc.
  - Prompts if file already exists, and will save existing one to a new location if one chooses to continue.
2) Runs `source ~/.zshrc` to activate the new config

## Setup Ruby
1) Installs the version of Ruby specified in [.ruby-version](.ruby-version) so it is available system wide.
  - Does not set this version as the global version, but that can be manually done by calling `rbenv global [version]` inserting the version desired.
