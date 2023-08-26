set t_u7=
set t_RV=

set nocompatible

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  "call dein#add('fatih/vim-go')
  "call dein#add('google/vim-ft-go')
  "call dein#add('nsf/gocode', {'rtp' : 'vim/'})
  "call dein#add('golang/lint', {'rtp' : 'misc/vim/'})
  "call dein#add('vim-jp/vim-go-extra')
  "

  call dein#add('mattn/vim-goimports')

  call dein#add('scrooloose/nerdtree')
  call dein#add('cocopon/iceberg.vim')

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

set background=dark
colorscheme iceberg

"autocmd FileType go autocmd BufWritePre <buffer> Fmt

autocmd BufRead,BufNewFile,BufWritePre *.go2 set filetype=go

nnoremap <silent><C-e> :NERDTreeToggle<CR>

"set completeopt=menu,preview


command! ErrF :call append(line('.'),'if err != nil {return fmt.Errorf("error: %w",err)}')
command! ErrX :call append(line('.'),'if err != nil {return xerrors.Errorf("error: %w",err)}')
command! ErrM :call append(line('.'),'if err != nil { fmt.Fprintf(os.Stderr,"run() error:\n%+v\n", err) }')
command! TestT :call append(line('.'),'func TestXxx(t *testing.T) {}')
command! TestB :call append(line('.'),'func BenchmarkXxx(b *testing.B) {}')
command! TestE :call append(line('.'),'func ExampleXxx() {}')
command! TestL :call append(line('.'),'t.Errorf("package.Func()\nwant:[%v]\ngot :[%v]",want,got)')



