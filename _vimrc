set nocompatible

set packpath^=~/.vim

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
"Plug 'rodjek/vim-puppet'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'zef/vim-cycle'
Plug 'tommcdo/vim-exchange'
"Plug 'leafgarland/typescript-vim'
Plug 'nanotech/jellybeans.vim'
"Plug 'magarcia/vim-angular2-snippets'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
""Plug 'ajorgensen/vim-markdown-toc'
Plug 'junegunn/limelight.vim'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()



filetype plugin indent on

source $VIMRUNTIME/defaults.vim

set list
"set background=dark
set number
set langmenu=en
set ignorecase
set smartcase
set incsearch
set hlsearch

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set encoding=utf-8
set fileencoding=utf-8

set laststatus=2

set wildmenu
set showmode
set showcmd

set visualbell

set cursorline
set ttyfast

set ruler

colorscheme jellybeans
if &diff
"    colorscheme blue
    set nocursorline
endif


highlight! link DiffText MatchParen

" ¦ = CTRL-K BB  ¬ = CTRL-K NO
set listchars+=tab:\¦\ ,eol:\¬
set diffopt+=iwhiteall,icase
set diffopt+=vertical

set ff=unix

autocmd BufEnter set ff=unix

map <Leader>du :diffupd<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>gd :Gdiff<cr>
map <Leader>gc :Gcommit<cr>

autocmd BufNewFile,BufRead *.md setlocal spell | setlocal spelllang=nl | setlocal textwidth=80 | setlocal formatoptions+=a
autocmd BufNewFile,BufRead !*.md set nospell

set whichwrap+=<,>,h,l

com! FormatXML :%!C:/python38/python -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
nnoremap = :FormatXML<Cr>

