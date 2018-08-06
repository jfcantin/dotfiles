"
call plug#begin()

Plug 'AndrewRadev/splitjoin.vim'
"Plug 'ConradIrwin/vim-bracketed-paste'
"Plug 'Raimondi/delimitMate'
"Plug 'SirVer/ultisnips'
"Plug 'cespare/vim-toml'
"Plug 'corylanou/vim-present', {'for' : 'present'}
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'fatih/vim-go', {'do' : 'GoUpdateBinaries'}
"Plug 'fatih/vim-hclfmt'
"Plug 'fatih/vim-nginx' , {'for' : 'nginx'}
"Plug 'godlygeek/tabular'
"Plug 'hashivim/vim-hashicorp-tools'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
"Plug 'junegunn/fzf.vim'
"Plug 'mileszs/ack.vim'
Plug 'plasticboy/vim-markdown'
"Plug 'scrooloose/nerdtree'
"Plug 't9md/vim-choosewin'
"Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}
Plug 'fatih/molokai'
"Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-scriptease'

Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" minimal example from https://github.com/tpope/vim-pathogen
set nocompatible
syntax on
filetype plugin indent on

" vim doesn't play well with fish
set shell=/bin/bash

"" preferences
set clipboard+=unnamed
set autoindent
set smartindent
set number
set tabstop=4
set shiftwidth=4
set background=dark
set ruler
set backspace=indent,eol,start
set linebreak
set nojoinspaces

" markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" ctrl-backspace should delete words
imap <C-bs> <C-w>
