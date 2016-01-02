# Path to your oh-my-zsh installation.
export ZSH=/Users/takanamito/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
export PATH="/usr/local/sbin:$PATH"

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

# git
alias g="git"
alias ga="git add"
alias gc="git commit -m"
alias gco="git checkout"
alias gb="git branch"
alias gp="git push"
alias gs="git status"
alias gd="git diff"

eval "$(direnv hook bash)"
export EDITOR=vim

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

function cdls() {
    \cd $1;
    ls;
}
