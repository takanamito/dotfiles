export EDITOR=vim

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
ZSH_THEME="bureau"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
export ZSH=/Users/takanamito/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/Users/takanamito/.bin:$PATH"
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

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

# brew
alias berw="brew"
alias brwe="brew"

# Rails
alias b="bundle"
alias be="bundle exec"

#vim
alias v="vim"

#retmux
alias tm="tmux"

eval "$(direnv hook zsh)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# 非公開設定
if [ -f ~/dotfiles/.private.conf ]; then
    . ~/dotfiles/.private.conf
fi

# GO
export GOROOT=/usr/local/opt/go/libexec
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# ghq
export GOPATH="$HOME/ghq"
export GHQ_ROOT="$HOME/ghq"
alias hb='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# protoc
export PATH="$PATH:$HOME/.pub-cache/bin"

# Java
JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
PATH=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home/bin:$PATH

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
