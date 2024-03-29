set autoindent
set smartindent
set cindent
set laststatus=2
set number
set rnu
set mouse=a

set sts=4
set ts=4
set shiftwidth=4
set tabstop=4
set wmnu
set shiftwidth=2

set ignorecase
set hlsearch

set mouse=a
set ruler
set nocompatible

set fileencodings=utf-8,euc-kr
set fencs=ucs-bom,utf-8,euc-kr

set title
set showmatch
set nowrap
set bs=indent,eol,start
syntax enable
filetype indent on
filetype plugin indent on

let g:indentguides_spacechar = '|'
let g:indentguides_tabchar = '|'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

