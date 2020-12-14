#!/bin/zsh

if [ -f ~/.zshrc ]; then
    echo "~/.zshrc already exists." >&2
    exit 1
fi

cp -nv .zshrc ~/.zshrc

source ~/.zshrc
