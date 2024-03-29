set wildignore+=*/tmp/*,*.so,*.a,*.swp,*.zip,*.obj

let g:ctrlp_custom_ignore = {
			\ 'dir': 'node_modules',
			\ 'file': '.*lock.*'
			\ }
let g:ctrlp_max_files = 10000
let g:ctrlp_max_depth = 30
