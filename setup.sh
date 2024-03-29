# zshのインストール
# sudo vim /etc/shells
# /usr/local/bin/zsh
chsh -s /usr/local/bin/zsh

# oh-my-zshのインストール
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

read -p "install dotfiles? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
    DOT_FILES=(.zshrc .bashrc .bash_profile .gitignore_global .gitconfig .gitignore .gvimrc .tmux.conf .vimrc .vim .bin)

    echo "installing dotfiles...\n"
    for file in ${DOT_FILES[@]}
    do
        if [ $yn = "y" -o $yn = "Y" ]; then
            rm -rf $HOME/$file
            ln -s `pwd`/$file $HOME/$file
            echo "done!: ~/$file"
        fi
    done

fi

echo "\n"
echo "== finish!! =="
echo "vimを起動して:NeoBundleInstallを実行してください"
