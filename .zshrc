# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
export PATH="/usr/local/sbin:/Users/takanamito/.bin:$PATH"
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# zsh設定
setopt auto_cd

# alias
alias cd=cdls
alias cdp="cd ~/project"
alias la="ls -a"
alias ll="ls -l"
alias cl="clear"

# Rails
alias be="bundle exec"

#vim
alias vi="vim"

#tmux
alias tm="tmux"

# chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

eval "$(direnv hook zsh)"
export EDITOR=vim

# GO
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

# peco
if [ -f ~/dotfiles/.peco.conf ]; then
    . ~/dotfiles/.peco.conf
fi

# 非公開設定
if [ -f ~/dotfiles/.private.conf ]; then
    . ~/dotfiles/.private.conf
fi

eval "$(rbenv init -)"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler osx rake ruby)

# Path to your oh-my-zsh installation.
export ZSH=/Users/takanamito/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

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

# PR開く
function gpr() {
  local current_branch_name=$(git symbolic-ref --short HEAD | xargs perl -MURI::Escape -e 'print uri_escape($ARGV[0]);')
    hub browse -- pull/${current_branch_name}
}
