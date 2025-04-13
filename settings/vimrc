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
Plug 'fatih/vim-go', {'do' : ':GoInstallBinaries'}
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"Plug 'fatih/vim-hclfmt'
"Plug 'fatih/vim-nginx' , {'for' : 'nginx'}
"Plug 'godlygeek/tabular'
"Plug 'hashivim/vim-hashicorp-tools'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
"Plug 'junegunn/fzf.vim'
"Plug 'mileszs/ack.vim'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/syntastic'
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
Plug 'vim-scripts/dbext.vim'

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
set ruler
set number
set tabstop=4
set shiftwidth=4
set background=dark
colorscheme molokai
set ruler
set backspace=indent,eol,start
set linebreak
set nojoinspaces
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellCap
hi SpellCap cterm=underline ctermfg=red
" SpellBad       xxx ctermbg=9 gui=undercurl guisp=Red
" SpellCap       xxx ctermbg=12 gui=undercurl guisp=Blue

"" Map leader to ,
let mapleader=','

" markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
au BufRead *.md setlocal spell

" ctrl-backspace should delete words
imap <C-bs> <C-w>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <leader><space> :noh<cr>
nnoremap n nzzzv
nnoremap N Nzzzv

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"" Quickfix
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <Leader>a :cclose<CR>

" dbext
source ~/.config/vimextra/dbextconfig.vim
let g:dbext_default_buffer_lines = 20 

" ctrl-p
let g:ctrlp_open_new_file = 'r'

" fugitive
if exists("*fugitive#statusline")
	set statusline+=%{fugitive#statusline()}
endif
"noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
"noremap <Leader>gr :Gremove<CR>

" Terminal
nnoremap <silent> <leader>sh :terminal<CR>

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" deoplete
let g:deoplete#enable_at_startup = 1

" go
" vim-go
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

augroup completion_preview_close
  autocmd!
  if v:version > 703 || v:version == 703 && has('patch598')
    autocmd CompleteDone * if !&previewwindow && &completeopt =~ 'preview' | silent! pclose | endif
  endif
augroup END

augroup go

  au!
  au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

  au FileType go nmap <Leader>dd <Plug>(go-def-vertical)
  au FileType go nmap <Leader>dv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader>db <Plug>(go-doc-browser)

  au FileType go nmap <leader>r  <Plug>(go-run)
  au FileType go nmap <leader>t  <Plug>(go-test)
  au FileType go nmap <Leader>gt <Plug>(go-coverage-toggle)
  au FileType go nmap <Leader>i <Plug>(go-info)
  au FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
  au FileType go nmap <C-g> :GoDecls<cr>
  au FileType go nmap <leader>dr :GoDeclsDir<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
  au FileType go imap <leader>dr <esc>:<C-u>GoDeclsDir<cr>
  au FileType go nmap <leader>rb :<C-u>call <SID>build_go_files()<CR>

augroup END

