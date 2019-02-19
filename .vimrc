
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('fatih/vim-go')
  call dein#add('google/vim-ft-go')
  call dein#add('nsf/gocode', {'rtp' : 'vim/'})
  call dein#add('golang/lint', {'rtp' : 'misc/vim/'})
  call dein#add('vim-jp/vim-go-extra')

  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

set nu
set nohlsearch
set cursorline

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

nnoremap <silent><C-e> :NERDTreeToggle<CR>

