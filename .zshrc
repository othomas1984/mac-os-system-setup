#Ruby Environment
eval "$(rbenv init -)"

#Oh-My-ZSH
export ZSH="~/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh


#Xcode Environment
export PATH="$HOME/.xcenv/bin:$PATH"
eval "$(xcenv init -)"

export HISTFILE="~/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export PATH="${HOME}/github/tinder_ios:${PATH}"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
