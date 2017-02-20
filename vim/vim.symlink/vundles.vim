" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" All your bundles here
"
" Git related...
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Ruby, Rails, Rake...
"Bundle "tpope/vim-rails.git"
"Bundle "tpope/vim-rvm.git"
"Bundle "vim-ruby/vim-ruby.git"

" Other languages
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/dbext.vim'
"Plugin 'elixir-lang/vim-elixir'
"Bundle "pangloss/vim-javascript"
"Bundle "vim-pandoc/vim-pandoc"
"Bundle "vim-pandoc/vim-pandoc-syntax"

" Html, Xml, Css, Markdown...
"Bundle "claco/jasmine.vim"
"Bundle "groenewege/vim-less.git"
"Bundle "jtratner/vim-flavored-markdown.git"
"Bundle "nelstrom/vim-markdown-preview"
"Bundle "skwp/vim-html-escape"
"Bundle "wavded/vim-stylus"

" General text editing improvements...
"Bundle "skwp/vim-easymotion"
"Bundle "msanders/snipmate.vim.git"
"Bundle "rbonvall/snipmate-snippets-bib"

" General vim improvements
Plugin 'ctrlpvim/ctrlp.vim'
"Bundle "mattn/webapi-vim.git"
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-surround.git'
Plugin 'Shougo/neocomplete.vim'
"Bundle "ervandew/screen"

"vim-misc is required for vim-session
"Bundle "xolox/vim-misc"
"Bundle "xolox/vim-session"

" Cosmetics, color scheme, Powerline...
"Bundle "skwp/vim-colors-solarized"
"Bundle 'tpope/vim-vividchalk'

" Omnisharp
" Bundle "OmniSharp/omnisharp-vim"

"Filetype plugin indent on is required by vundle
call vundle#end()
filetype plugin indent on
