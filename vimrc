" Turn on syntax highlighting
syntax on

" Colourscheme
colorscheme monokai

" Show line numbers
set number

" Relative line numering
set relativenumber

" Turn on autoindent
set autoindent
set smartindent

" Widths
set shiftwidth=4
set tabstop=4

" Ensures spaces are used for tabs
set expandtab

" Turns on no wrapping for text in vim
set nowrap

" Searches will be case-insensitive. However, the search becomes case-sensitive 
" if it contains any capital letters.
set ignorecase
set smartcase

" Turns on highlighting for search matches.
set hlsearch

" Turns on mouse support
set mouse=a

" Abbreviations
abbr psvm public static void main(String[] args){<CR>}<esc>O
abbr sout System.out.println("");<esc>2hi
abbr sop System.out.print("");<esc>2hi
abbr forl for (int i = 0; i < ; i++) {<esc>7hi

" Set reminders to prevent usage of arrow keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
