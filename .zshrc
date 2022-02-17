#Ruby Environment
eval "$(rbenv init -)"

#Oh-My-ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

#Xcode Environment
#export PATH="$HOME/.xcenv/bin:$PATH"
#eval "$(xcenv init -)"

export HISTFILE="~/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

eval "$(ssh-agent -s)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Tinder Artifactory setup
export ARTIFACTORY_USER=$(security find-generic-password -w -a $USER -D "environment variable" -s "ARTIFACTORY_USER")
export ARTIFACTORY_PASSWORD=$(security find-generic-password -w -a $USER -D "environment variable" -s "ARTIFACTORY_PASSWORD")
