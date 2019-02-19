
なんとなくdein.vimに変更した

```
$ git clone https://github.com/secondarykey/dotfiles
$ 
$ mkdir -p $HOME/.cache/dein
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh $HOME/.cache/dein
$
$ cp -p dotfiles/.vimrc $HOME/.vimrc
```

でvimで

```
:call dein#install()
```

でOK。
