#!/bin/zsh

echo "Setting the default shell to zsh. This may require your password"
chsh -s /bin/zsh

if [ -f ~/.zshrc ]; then
  echo "~/.zshrc already exists." >&2
  if read -q "choice?Would you like to overwrite if (previous file will be saved)?[y/n]"; then
    cp ~/.zshrc ~/.zshrc_pre-setup-zsh
    cp .zshrc ~/.zshrc
    echo
    echo "Previous config saved to ~/.zshrc_pre-setup-zsh" >&2
    source ~/.zshrc
  fi
else
  cp .zshrc ~/.zshrc
fi
