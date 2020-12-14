#Ruby Environment
eval "$(rbenv init -)"

#Xcode Environment
export PATH="$HOME/.xcenv/bin:$PATH"
eval "$(xcenv init -)"

export HISTFILE="~/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

