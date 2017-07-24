runtime bundle/pathogen/autoload/pathogen.vim
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
" Highlight current line
set cursorline

"
" # Editor
"
set list
" Display invisibles
set listchars=tab:»\ ,trail:·,eol:¬
" Visually selects characters last entered in insert mode
nnoremap gV `[v`]
" 80 column character limit
set colorcolumn=80
" Fast update time (quickly show Git changes in gutter)
set updatetime=250

"
" # Movement
"
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

"
" # Mappings
"
" Save file with root permissions
cmap w!! w !sudo tee % > /dev/null
