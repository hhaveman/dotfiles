packadd minpac
call minpac#init()

call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-dadbod')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('rodjek/vim-puppet')
call minpac#add('sjl/gundo.vim')
call minpac#add('godlygeek/tabular')
call minpac#add('zef/vim-cycle')
call minpac#add('tommcdo/vim-exchange')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('nanotech/jellybeans.vim')
call minpac#add('magarcia/vim-angular2-snippets')
call minpac#add('vim-airline/vim-airline')
call minpac#add('k-takata/minpac', { 'type':'opt'})

filetype plugin indent on

source $VIMRUNTIME/defaults.vim

set list
set background=dark
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

colorscheme elflord
if &diff
    colorscheme murphy
    set nocursorline
endif


highlight! link DiffText MatchParen

" ¦ = CTRL-K BB  ¬ = CTRL-K NO
set listchars+=tab:\¦\ ,eol:\¬
set diffopt+=iwhite

set ff=unix

autocmd BufEnter set ff=unix

map <Leader>du :diffupd<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>gd :Gdiff<cr>
