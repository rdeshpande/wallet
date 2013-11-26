set nocompatible  " We don't want vi compatibility.
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle "tpope/vim-fugitive.git"
Bundle "tpope/vim-rails.git"
Bundle "tpope/vim-surround.git"
Bundle "Lokaltog/vim-powerline"
Bundle "kien/ctrlp.vim.git"
Bundle "myusuf3/numbers.vim.git"
Bundle "slim-template/vim-slim.git"
Bundle "tpope/vim-bundler.git"

syntax on
filetype plugin indent on  " Automatically detect file types.

let mapleader = ";"
let maplocalleader = ";"
set autoindent
set autowrite  " Writes on make/shell commands
set backspace=start,indent
set clipboard=unnamed
set expandtab
set wrap
set formatoptions=tcqr
set hidden
set history=256  " Number of things to remember in history.
set listchars=tab:▸\ ,trail:¬   " UTF-8 characters for trailing whitespace
set hlsearch
set ignorecase
set laststatus=2  " Always show status line.
set modifiable
set nocp incsearch
set noerrorbells  " No noise.
set novisualbell  " No blinking .
set ruler  " Ruler on
set scrolloff=3
set smartcase
set smarttab
set timeoutlen=200  " Time to wait after ESC (default causes an annoying delay)
set wildmode=longest,list
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wildignore+=*.o,*.obj,.git,*.pdf,*.gif,*.png,*.jpg,*.ico
scriptencoding utf-8

" Shortcuts
map <Leader>s :w<CR>
cab Q quit
cab W write
cab Wq wq
nmap <expr> <Leader>e ':e ' . expand('%:p:h')
nnoremap <Leader>f     :CtrlPMRUFiles<CR>


if has("gui_running")
  colorscheme slate
  set number
  set guifont=Monaco:h13
  set guioptions=egmrLt
end

autocmd BufEnter *.html.slim :set ft=slim
autocmd BufEnter *.css.scss :set ft=scss

nnoremap <Leader>f     :CtrlPMRUFiles<CR>
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$',
      \ 'file': '\.exe$\|\.so$\|\.dll$' }

" Consider question/exclamation marks to be part of a Vim word.
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255
au BufNewFile,BufRead *.ejs set filetype=jst
