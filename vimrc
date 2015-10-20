set shell=/bin/bash

if !1 | finish | endif

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'dag/vim-fish'
NeoBundle 'cespare/vim-toml'
NeoBundle 'racer-rust/vim-racer'
NeoBundle 'phildawes/racer', {
\	'build' : {
\		'unix': 'cargo build -j10 --release',
\	}
\}
call neobundle#end()

filetype plugin indent on
NeoBundleCheck

syntax on

set number
set cc=80
set cursorline
set hlsearch
set ignorecase

" Disable mode show (use for powerline)
set laststatus=2
set noshowmode

set autoindent
set tabstop=8
set nowrap
set scrolloff=5
set sidescrolloff=15
set sidescroll=1
set noswapfile
set nobackup
set nowb
set backspace=indent,eol,start

set shiftwidth=8
set mouse=a
set ttymouse=xterm2

" Syntastic
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_include_dirs = ['include', 'inc', 'src']
let g:syntastic_cpp_compiler_options = '--std=c++11'
let g:syntastic_check_on_open = 0
let g:syntastic_error_symbol = "✘ "

" Neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Powerline fonts for Airline
let g:airline_powerline_fonts = 1

" Set color scheme
let base16colorspace=256
set background=dark
colorscheme base16-ocean

" Auto bracing
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Git gutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
highlight SignColumn ctermbg=black

" Racer
set hidden
let g:racer_cmd = "$HOME/.vim/bundle/racer/target/release/racer"
