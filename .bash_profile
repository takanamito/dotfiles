if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export HISTFILE=~/dotfiles/.vim/.bash_history
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/takanamito/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/takanamito/google-cloud-sdk/completion.bash.inc'
