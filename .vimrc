execute pathogen#infect()

"
" # Colors
"
syntax on
colorscheme badwolf

"
" # UI
"
filetype plugin indent on
" Show absolute and relative line numbers
set number
set relativenumber
" Highlist current line
set cursorline

"
" # Editor
"
set list
" Display invisibles
set listchars=tab:▸\ ,eol:¬,trail:▫
" Visually selects characters last entered in insert mode
nnoremap gV `[v`]
" 80 column character limit
set colorcolumn=80

"
" # Movement
"
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
