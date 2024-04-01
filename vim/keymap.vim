let mapleader=","

inoremap <leader>a <ESC>A

inoremap <leader>s <ESC>:w<CR>
nnoremap <leader>s :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

inoremap <leader>f <ESC>
nnoremap <leader>f <ESC>
vnoremap <leader>f <ESC>
tnoremap <leader>f <ESC>

inoremap <leader>dd <ESC>dd

nnoremap <F12> :noh

nnoremap <leader>tm :tabnew<CR>:terminal<CR>

" Toggle terminal on/off (neovim)
nnoremap <leader><S-t> :call TermToggle(12)<CR>
inoremap <leader><S-t> <Esc>:call TermToggle(12)<CR>
tnoremap <leader><S-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>


" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <C-j> <ESC><C-w>j
inoremap <C-k> <ESC><C-w>k
inoremap <C-h> <ESC><C-w>h
inoremap <C-l> <ESC><C-w>l
nnoremap <C-j> <ESC><C-w>j
nnoremap <C-k> <ESC><C-w>k
nnoremap <C-h> <ESC><C-w>h
nnoremap <C-l> <ESC><C-w>l
nnoremap <leader><C-v> <C-w>v

nnoremap <leader>tb :TagbarToggle<CR>

nnoremap <leader>fzf :FZF<CR>


