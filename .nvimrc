execute pathogen#infect()

syntax on
colorscheme desert256v2
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=4                 " 6 spaces
set shiftwidth=4
set softtabstop=4
set expandtab
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

"  backup
set backup
set backupdir=~/.nvim_backup//
set viminfo=%100,'100,/100,h,\"500,:100,n~/.nviminfo
"set viminfo='100,f1

" mappings
" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>

" 80 character soft/100 hard line limit
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27 

nnoremap <C-L> <C-W>
set mouse=

autocmd Filetype javascript setlocal et ts=2 sw=2 sts=2
autocmd Filetype python setlocal sta et sw=2 ts=2 sts=2
let g:pymode_lint_config = '$HOME/.nvim/pylint.rc'
let g:pymode_lint_ignore = 'E111,W0311,E114'
let g:pymode_rope = 0

let g:glsl_file_extensions = '*.glsl,*.vsh,*.fsh'
set shiftwidth=2
autocmd FileType make setlocal noexpandtab
