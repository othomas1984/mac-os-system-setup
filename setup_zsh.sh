#!/bin/zsh

# Set default shell to zsh if not already
if [ ! -n $ZSH_VERSION ]; then 
  echo "Setting the default shell to zsh. This may require your password"
	chsh -s /bin/zsh
fi

# Install Oh-My-ZSH
if [ ! -d ~/.oh-my-zsh ]; then
	echo "Installing oh-my-zsh"
	zsh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"
fi

# Install zsh-autosuggestions
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install .zshrc file
if [ -f ~/.zshrc ]; then
  echo "~/.zshrc already exists." >&2
  if read -q "choice?Would you like to overwrite if (previous file will be saved)?[y/n]"; then
    cp ~/.zshrc ~/.zshrc_pre-setup-zsh
    cp .zshrc ~/.zshrc
    echo
    echo "Previous config saved to ~/.zshrc_pre-setup-zsh" >&2
  fi
else
  cp .zshrc ~/.zshrc
fi

# Install iterm2 shell integration
if [ ! -f ~/.iterm2_shell_integration.zsh ]; then
  curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash
fi

zsh -l