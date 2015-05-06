if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export HISTFILE=~/dotfiles/.vim/.bash_history
eval "$(rbenv init -)"
