
call plug#begin('~\AppData\Local\nvim\plugged')

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'gruvbox-community/gruvbox'
Plug 'overcache/NeoSolarized'
Plug 'vimwiki/vimwiki'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Raimondi/delimitMate'
Plug 'vifm/vifm.vim'
Plug 'Yggdroot/indentLine'
Plug 'gko/vim-coloresque'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

call plug#end()

