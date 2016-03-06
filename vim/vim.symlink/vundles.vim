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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Ruby, Rails, Rake...
"Bundle "tpope/vim-rails.git"
"Bundle "tpope/vim-rvm.git"
"Bundle "vim-ruby/vim-ruby.git"

" Other languages
Bundle "elixir-lang/vim-elixir"
"Bundle "pangloss/vim-javascript"
"Bundle "edsono/vim-dbext"
Bundle "vim-pandoc/vim-pandoc"
Bundle "vim-pandoc/vim-pandoc-syntax"

" Html, Xml, Css, Markdown...
"Bundle "claco/jasmine.vim"
"Bundle "groenewege/vim-less.git"
"Bundle "jtratner/vim-flavored-markdown.git"
"Bundle "nelstrom/vim-markdown-preview"
"Bundle "skwp/vim-html-escape"
"Bundle "wavded/vim-stylus"

" Git related...
Bundle "tpope/vim-fugitive"
Bundle "vim-airline/vim-airline"
Bundle "vim-airline/vim-airline-themes"

" General text editing improvements...
"Bundle "skwp/vim-easymotion"
Bundle "msanders/snipmate.vim.git"
Bundle "rbonvall/snipmate-snippets-bib"

" General vim improvements
Bundle "kien/ctrlp.vim"
"Bundle "mattn/webapi-vim.git"
Bundle "scrooloose/nerdtree.git"
Bundle "scrooloose/syntastic.git"
Bundle "tpope/vim-surround.git"
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
filetype plugin indent on
