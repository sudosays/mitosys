" jjstopforths bare vimrc file

execute pathogen#infect()

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:tex_flavor='latex'

" Powerline stuff

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

" Limelight cfg

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

filetype plugin indent on
syntax on

set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add

set spell

set tw=79

set background=dark

" Always show the statusbar

set laststatus=2

" Tab stuff

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" Visual stuff

" Line numbers

set relativenumber
set number

" Highlight the current line

"set cul

"hi CursorLine cterm=NONE ctermfg=white ctermbg=darkgray

" Line Number formatting
 hi LineNR cterm=italic ctermfg=white
 hi CursorLineNR cterm=bold ctermfg=white ctermbg=blue

" CursorLine
"  au!
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au WinLeave * setlocal nocursorline
"augroup END

" Remaps

let mapleader=","

nnoremap <leader>qq :qa<CR>
nnoremap <leader>wq :wqa<CR>
nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>fer :source $MYVIMRC<CR>
nnoremap <leader>ww <C-W>w
nnoremap <leader>fs :w<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>wd :q<CR>
nnoremap <leader><leader> <Esc>:
inoremap <leader>jj <Esc>
nnoremap <leader>ff :NERDTreeToggle<CR>
