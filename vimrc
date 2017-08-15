syntax on
filetype plugin indent on  " Automatically detect file types.
scriptencoding utf-8

set backspace=start,indent
set expandtab
set history=1000
set hlsearch
set incsearch
set nobackup
set nocompatible  " We don't want vi compatibility.
set noswapfile
set rtp+=/usr/local/opt/fzf
set scrolloff=3
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2 
set undolevels=1000   
set wildmode=longest,list

let mapleader = ";"
let maplocalleader = ";"

" Shortcuts
cab Q quit
cab W write
cab Wq wq
nmap <expr> <Leader>e ':e ' . expand('%:p:h')

" FZF
nnoremap <Leader>f     :History<CR>
