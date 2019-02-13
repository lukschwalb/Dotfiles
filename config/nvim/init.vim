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
nnoremap <silent> + :exe "resize " . (winheight(0) * 4/3)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 1/3)<CR>

nnoremap <silent> > :exe "vertical resize " (winwidth(0) * 4/3)<CR>
nnoremap <silent> < :exe "vertical resize " (winwidth(0) * 1/3)<CR>

" Status Line
set laststatus=2                               " always show status line
set statusline=%<%f\                           " Filename
set statusline+=%w%h%m%r                       " Options
set statusline+=\ [%{&ff}/%Y]                  " filetype
set statusline+=\ [%{split(getcwd(),'/')[-1]}] " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%        " Right aligned file nav info

