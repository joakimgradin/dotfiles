" Use modern Vim
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--- Plugins ---
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'

" All plugins must be added before this line
call vundle#end()
filetype plugin indent on

"--- Keybindings ---
inoremap jk <Esc>

"--- Interface options ---
set ruler
set number
set relativenumber
set cursorline

set expandtab
set tabstop=3
set shiftwidth=3

set showcmd
set showmatch
set hlsearch

syntax on

set belloff=all

"--- color scheme ---
colo gruvbox
set background=dark

"--- Misc options ---

" Set status for airline to show up
set laststatus=2

" Disable tex formatting in the vim terminal
let g:tex_conceal=''

" Nice search with :find
set path+=**
set wildmenu

" Syntax definitions for filetypes
au BufReadPost *.cls set syntax=tex
au BufReadPost *.sty set syntax=tex

" Remember cursor position when re-opening a file
augroup vimStartup
   au!
   autocmd BufReadPost * 
   \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
   \ | exe "normal! g`\""
   \ | endif  
augroup END
