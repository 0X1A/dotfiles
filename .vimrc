execute pathogen#infect()
filetype plugin on
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
set expandtab
set tabstop=4
set nowrap
set scrolloff=5
set sidescrolloff=15
set sidescroll=1
set noswapfile
set nobackup
set nowb

retab
set shiftwidth=4
set mouse=a
set ttymouse=xterm2

" Empty nerdtree
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree

" Solarized color scheme
set t_Co=256
set background=dark
colorscheme solarized

" Auto bracing
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
