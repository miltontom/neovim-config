
call plug#begin('~\AppData\Local\nvim\plugged')

Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'overcache/NeoSolarized'
Plug 'Mofiqul/vscode.nvim'
Plug 'tomasiser/vim-code-dark'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Auto-pairs
"Plug 'Raimondi/delimitMate'

" Better Syntax highlighting
Plug 'sheerun/vim-polyglot'

" File explorer
Plug 'scrooloose/nerdtree'

Plug 'Yggdroot/indentLine'

" Color preview
Plug 'gko/vim-coloresque'

" Fancy icons (place at last)
Plug 'ryanoasis/vim-devicons'

<<<<<<< HEAD
=======
Plug 'vifm/vifm.vim'
>>>>>>> 84ecdea (Nothing much)
call plug#end()

