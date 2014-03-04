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

" Empty nerdtree
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 20
autocmd vimenter * NERDTree

" Default .ycm_extra_conf.py
let g:ycm_global_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

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
