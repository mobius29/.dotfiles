let mapleader=","

inoremap <leader>a <ESC>A

inoremap <leader>s <ESC>:w<CR>
nnoremap <leader>s :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

inoremap <leader>f <ESC>
nnoremap <leader>f <ESC>
vnoremap <leader>f <ESC>

inoremap <leader>dd <ESC>dd

nnoremap <leader>tm :terminal<CR>

" Toggle terminal on/off (neovim)
nnoremap <leader><S-t> :call TermToggle(12)<CR>
inoremap <leader><S-t> <Esc>:call TermToggle(12)<CR>
tnoremap <leader><S-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>
