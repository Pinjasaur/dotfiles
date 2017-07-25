runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

"
" # Basics
"

" Use Vim features, not Vi
set nocompatible

" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8

"
" # Colors
"

filetype plugin indent on
syntax on
colorscheme badwolf

"
" # Editor
"

" Show absolute and relative line numbers
set number
set relativenumber

" Highlight current line
set cursorline

set list
" Display invisibles
set listchars=tab:»\ ,trail:·,eol:¬

" Visually selects characters last entered in insert mode
nnoremap gV `[v`]
" 80 column character limit

" Fast update time (quickly show Git changes in gutter)
set updatetime=250

" Force the cursor onto a new line after 80 characters
set textwidth=80

" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72

" Colour the column just after our line limit so that we don’t type over it
set colorcolumn=+1

" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

"
" # Mappings
"
" Save file with root permissions
cmap w!! w !sudo tee % > /dev/null

" Move vertically by visual line
nnoremap j gj
nnoremap k gk
