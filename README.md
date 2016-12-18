# dotfiles

## clone
ホームディレクトリにclone

## Install
```
$ cd ~/dotfiles
$ git submodule init && git submodule update
$ ./setup.sh # oh-my-zshが入ってない場合は2回実行
$ vim
:NeoBundleInstall
```

## プラグイン
### vim-quickrun
#### 実行
ノーマルモードで
\r

### NERDTree
#### 起動
Ctrl + e

#### カーソル移動
Ctrl + w → hjkl

### Sudo.vim
#### sudoで開き直す
:e sudo:%
