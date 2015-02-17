set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Golang setting
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'google/vim-ft-go'
Plugin 'nsf/gocode', {'rtp' : 'vim/'}
Plugin 'golang/lint', {'rtp' : 'misc/vim/'}
Plugin 'vim-jp/vim-go-extra'

"NERDTree
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

set nu
set nohlsearch
set cursorline

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

nnoremap <silent><C-e> :NERDTreeToggle<CR>

