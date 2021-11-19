# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
export PATH="/usr/local/sbin:/Users/takanamito/.bin:$PATH"
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# zsh設定
setopt auto_cd

# hub設定
eval "$(hub alias -s)"

# alias
alias cd=cdls
alias cdp="cd ~/project"
alias la="ls -a"
alias ll="ls -l"
alias cl="clear"

# brew
alias berw="brew"
alias brwe="brew"

# Rails
alias b="bundle"
alias be="bundle exec"

#vim
alias v="vim"

#tmux
alias tm="tmux"

# chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

eval "$(direnv hook zsh)"
export EDITOR=vim

# 非公開設定
if [ -f ~/dotfiles/.private.conf ]; then
    . ~/dotfiles/.private.conf
fi

eval "$(rbenv init -)"

# GO
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# ghq
# export GOPATH="$GOPATH:$HOME/ghq"
export GOPATH="$HOME/ghq"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler macos rake ruby)

# Path to your oh-my-zsh installation.
export ZSH=/Users/takanamito/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# peco
if [ -f ~/dotfiles/.peco.conf ]; then
    . ~/dotfiles/.peco.conf
fi

# ghq
# alias gh='cd $(ghq root)/$(ghq list | peco)'
alias hb='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

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

# ブランチ情報を表示
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"

# cdすると同時にls
function cdls() {
    \cd $1;
    ls;
}
