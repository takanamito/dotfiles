# ~/.zshrc

# oh-my-zshからgit pluginを使うための設定
ZSH=~/.oh-my-zsh
plugins=(git)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export PATH="$PATH:/usr/local/sbin:$HOME/.bin"
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# Dart
export PATH="$PATH:$HOME/.pub-cache/bin"

# GO
export GOENV_ROOT="$HOME/.goenv"
export PATH="$PATH:$GOROOT/bin"
export PATH="$PATH:$GOENV_ROOT/bin"

export GOPATH="$HOME/ghq"
export PATH="$PATH:$GOPATH/bin"
export GOBIN="$GOPATH/bin"

export PATH="$PATH:/opt/homebrew/opt/openjdk/bin"
export PATH="$PATH:/opt/homebrew/opt/sqlite/bin"

# zsh設定
setopt auto_cd

# hub設定
eval "$(hub alias -s)"

# cdすると同時にls
function cdls() {
    \cd $1;
    ls;
}

# alias
alias cd=cdls
alias la="ls -a"
alias ll="ls -l"
alias cl="clear"

alias v="vim"
alias tm="tmux"
alias berw="brew"
alias brwe="brew"
alias b="bundle"
alias be="bundle exec"

eval "$(direnv hook zsh)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# 非公開設定
if [ -f ~/dotfiles/.private.conf ]; then
    . ~/dotfiles/.private.conf
fi

eval "$(rbenv init -)"
eval "$(goenv init -)"

# peco
if [ -f ~/dotfiles/.peco.conf ]; then
    . ~/dotfiles/.peco.conf
fi

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^g' peco-src

ulimit -n 10000

