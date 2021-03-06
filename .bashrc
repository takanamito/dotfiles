alias cd=cdls
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

# git settings
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

if [ -f ~/dotfiles/.private.conf ]; then
    . ~/dotfiles/.private.conf
fi

function cdls() {
    \cd $1;
    ls;
}

eval "$(direnv hook bash)"
export EDITOR=vi
