nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set encoding=UTF-8

autocmd VimEnter * NERDTree

autocmd StdinReadPre * let s:std_in=1m
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

let NERDTreeShowHidden=1
