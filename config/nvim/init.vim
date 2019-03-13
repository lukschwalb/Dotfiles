syntax on
set showmode


" Preserve transparent background
hi Normal guibg=NONE ctermbg=NONE

set relativenumber
set nu rnu

set encoding=utf-8
set autochdir
set splitbelow
set splitright

" Searching
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch

" Line wrapping
set wrap
set linebreak

" Tab Character Spacing
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

map <C-R> :FZF<CR>

" Map split windows movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map keys to resize splits
nnoremap <silent> + :exe "resize " . (winheight(0) * 5/4)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 3/4)<CR>

nnoremap <silent> > :exe "vertical resize " (winwidth(0) * 5/4)<CR>
nnoremap <silent> < :exe "vertical resize " (winwidth(0) * 3/4)<CR>

" " Copy to clipboard
vnoremap  y  "+y
nnoremap  Y  "+yg_
nnoremap  y  "+y
nnoremap  yy  "+yy

" " Paste from clipboard
nnoremap p "+p
nnoremap P "+P
vnoremap p "+p
vnoremap P "+P
nnoremap <C-p> p
vnoremap <C-p> p


let g:lightline = {
        \ 'colorscheme': 'seoul256',
        \ 'active': {
        \   'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified', 'duck']],
        \   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
        \ },
        \ 'component': {
        \   'duck': '🦆'
        \ },
    \ }

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'

call plug#end()

