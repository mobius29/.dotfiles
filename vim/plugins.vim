call plug#begin()
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'frazrepo/vim-rainbow'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/nerdcommenter'
	Plug 'chrisbra/NrrwRgn'
	Plug 'majutsushi/tagbar'
	Plug 'jiangmiao/auto-pairs'
	Plug 'mhinz/vim-signify'
	Plug 'Quramy/vim-dtsm'
	Plug 'vim-syntastic/syntastic'
	Plug 'diepm/vim-rest-console'
	Plug 'haya14busa/incsearch.vim'
	Plug 'preservim/nerdtree'
	Plug 'thaerkh/vim-indentguides'

	Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

	"javascript/typescript
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

	"jsx/tsx
	Plug 'mxw/vim-jsx'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

	"graphql
	Plug 'jparise/vim-graphql'

	"rust
	Plug 'rust-lang/rust.vim'
	
	"auto-completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"snippets
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'

	"asynchronouse execution library for vim
	Plug 'Shougo/vimproc.vim', { 'do': 'make' }

	"copilot
	Plug 'github/copilot.vim'
	call plug#end()
