" :options

" General ------ {{{

filetype plugin indent on
set history=1000
set gdefault                            " Force vim to do global substitiutions
"set linebreak
set breakindent
set breakindentopt=shift:0
set showbreak="↳"
"let &showbreak='↳ '
set path+=**
set ttimeout
set timeoutlen=1000 ttimeoutlen=0
set nostartofline                       " Jump to first non-blank character
"set showmatch                           " Highlight matching bracket
set wildmenu
set nocompatible
set encoding=UTF-8
set noswapfile
set pastetoggle=<F2>

set wrap
set textwidth=79
set formatoptions=qrnl

set updatetime=50
set pumheight=10
set number
"set fillchars+=vert:\|
set fillchars+=vert:│
set clipboard=unnamed,unnamedplus
set splitbelow splitright
set nobackup
set undofile
set formatoptions-=cro


" Spell checking
"setlocal spell spelllang=en_us

set scrolloff=8
set sidescrolloff=15
set sidescroll=5

" ------ }}}

" Search ------ {{{

set hlsearch
set ignorecase
set smartcase
set incsearch

" ------ }}}

" Tabs ------ {{{

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab               " convert tabs to spaces
set autoindent
set smartindent

" ------ }}}

"- Mouse ------ {{{

"set gcr=a:blinkon25
"set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
set guicursor=n-v-c:block-Cursor-blinkoff0
set guicursor+=i:ver100-iCursor-blinkoff0
"set guicursor=n-i:blinkon1
set mouse=a
set mousehide

" ------ }}}

" Statusline & Tabline ------ {{{

set noshowmode
set cmdheight=1
set showcmd
"set laststatus=2
set laststatus=3
set showtabline=2

" ------ }}}

" User-Interface ------ {{{

"set nocursorline
set cursorline
"set cursorcolumn
"set signcolumn=yes
set signcolumn=no
"set colorcolumn=80
set noerrorbells

" ------ }}}

" Code folding ------ {{{

set foldmethod=marker           " type of folding
set foldmarker=start,end        " foldmarker config
set foldmarker={{{,}}}          " folding style character

" ------ }}}

" List characters ------ {{{

" :h listchars
nnoremap <F12> :set list!<CR>
set listchars=space:·,tab:»·,eol:$

" ------ }}}

