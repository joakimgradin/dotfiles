set nocompatible
set laststatus=2
set encoding=utf-8

set t_Co=256

:color darkspectrum_modified

set number
   
set ignorecase
set smartcase

set autoindent

set shiftwidth=3
set softtabstop=3
set expandtab
:autocmd FileType make set noexpandtab
syntax enable

set showcmd

set showmatch

set incsearch
set hlsearch

call pathogen#infect()

" Mappings "

inoremap jk <esc>

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

nmap <up> ddkP 
nmap <down> ddp 
nmap <left> <Nop>
nmap <right> <Nop>

imap <up> <Nop>
imap <down> <Nop>
imap <left> <Nop>
imap <right> <Nop>

nmap <C-t> :tabnext<CR>
nmap <C-p> :tabprevious<CR>
nmap G Gzz
