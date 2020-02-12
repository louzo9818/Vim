set nocompatible
call pathogen#infect()
call pathogen#helptags()
filetype off

" Theme of vim to be beautiful
colorscheme Tomorrow-Night

" Enable filetype detection for plugins and indentation options
filetype plugin indent on

" Delete expentab for the Makefile files
autocmd Filetype make setlocal noexpandtab

" Force encoding to utf-8
set encoding=utf-8

" Disable swapfiles
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
""""""""""""""""""""""""""""""""""""""""""""""""""

" Make backspace behave as expected
set backspace=eol,indent,start

" Display whitespace characters
set list listchars=tab:>─,eol:¬,trail:.

" Set the minimal amount of lignes under and above the cursor
set scrolloff=5

" Show line number
set nu

" Enables syntax highlighting
syntax on

" Disable bell completely
set visualbell
set t_vb=

" Allow mouse use in vim
set mouse=a

" Briefly show matching braces, parens, etc
set showmatch

" Enhance command line completion
set wildmenu

" Wrap on column 80
set textwidth=79

" Display information of the current line, column and relative position
set ruler

" Display a line in the 80th column
set cc=+1


""""""""""""""""""""""""""""""""""""""""""""""""""
" Search options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
""""""""""""""""""""""""""""""""""""""""""""""""""

" The number of spaces inserted/removed when using < or >
set shiftwidth=4

" The length of a tab, this is for documentation purposes only
set tabstop=4

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
set smarttab

" Set basic indenting (i.e. copy the indentation of the previous line)
" When filetype detection didn't find a fancy indentation scheme
set autoindent

" Insert spaces instead of tabs
set expandtab

" The number of spaces inserted when you press tab.
" -1 means the same value as shiftwidth
set softtabstop=-1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""

set smartindent
set hidden

" Maintain undo history between sessions
set undofile

" Set the undodir by default because it was created in the current directory
set undodir=~/.vim/undodir

" Set mapleader to ','
let mapleader=","


"VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'dense-analysis/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdcommenter'
Plugin 'delimitMate.vim'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()
filetype plugin indent on


"ULTISNIPS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"NERDCOMMENTER"
let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }
