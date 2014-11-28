set shell=/bin/zsh

if !1 | finish | endif

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
call neobundle#end()

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'wting/rust.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kristijanhusak/vim-multiple-cursors'

filetype plugin on
NeoBundleCheck

filetype indent on
syntax on

set number
set cc=80
set cursorline
set hlsearch
set ignorecase
set showmode

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

" Neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Empty nerdtree
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 20
autocmd vimenter * NERDTree

" Powerline fonts for Airline
let g:airline_powerline_fonts = 1

" Solarized color scheme
set t_Co=256
set background=dark
colorscheme solarized

" Auto bracing
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Git gutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
highlight SignColumn ctermbg=black
