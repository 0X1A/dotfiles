execute pathogen#infect()
filetype plugin on
syntax enable

set	expandtab
set	tabstop=4
retab
set	shiftwidth=4
set	number
set	mouse=a

let g:Powerline_symbols = 'fancy'

autocmd vimenter * NERDTree

set	t_Co=256
set background=dark
colorscheme solarized

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}