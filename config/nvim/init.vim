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


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'kshenoy/vim-signature'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif


call plug#end()
    
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

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#auto_complete_delay = 500
" call deoplete#custom#option('auto_complete', v:false)

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'vhdl': ['vhdl-tool', 'lsp'],
    \ 'sh': ['bash-language-server', 'start']
    \ }



autocmd FileType vhdl setlocal omnifunc=lsp#complete


