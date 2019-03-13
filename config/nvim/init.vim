set colorcolumn=80

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
set tabstop=4
set shiftwidth=4
set expandtab

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR>


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

" Status Line
set laststatus=2                               " always show status line
set statusline=%<%f\                           " Filename
set statusline+=%w%h%m%r                       " Options
set statusline+=\ [%{&ff}/%Y]                  " filetype
set statusline+=\ [%{split(getcwd(),'/')[-1]}] " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%        " Right aligned file nav info

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'

call plug#end()

