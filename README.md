install.shを追加しました。

WSLのvimが古かったのでdeinが動作しないことがあった。
以下はvimのアップデート方法

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt instal vim
sudo apt install vim
```

go2拡張子に対応し、WSL上で何故か挿入モードになる問題に対応

