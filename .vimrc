execute pathogen#infect()
filetype plugin on
syntax enable
set number

" Disable mode show (use for powerline)
set laststatus=2
set noshowmode

set autoindent
set	expandtab
set	tabstop=4
set nowrap

retab
set	shiftwidth=4
set	mouse=a
set ttymouse=xterm2

" Empty nerdtree
autocmd vimenter * NERDTree

" Solarized color scheme
set	t_Co=256
set background=dark
colorscheme solarized

" Auto bracing
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
