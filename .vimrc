runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

"
" #BASICS
"

" Use Vim features, not Vi
set nocompatible

" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8

"
" #MISC
"

" Don’t redraw the screen unless we need to
set lazyredraw

" Write swapfiles sooner (Git gutter updates faster)
set updatetime=250

" Open splits to the right or below; more natural than the default
set splitright
set splitbelow

"
" #COLORS
"

filetype plugin indent on
syntax on
set t_Co=256
colorscheme badwolf

"
" #UI
"

" Show status line
set laststatus=2

" Show what mode you’re currently in
set showmode

" Show what commands you’re typing
set showcmd

" Allow modelines
set modeline

" Show current line and column position in file
set ruler

" Customise our current location information
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)

" Show file title in terminal tab
set title

"
" #EDITOR
"

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5

" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1

" No line-wrapping
set nowrap

" Show absolute and relative line numbers
set number
set relativenumber

" Highlight current line
set cursorline

" Display invisibles
set list
set listchars=tab:»\ ,trail:·,nbsp:␣,eol:¬,extends:→,precedes:←

" Force the cursor onto a new line after 80 characters
set textwidth=80

" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72

" Color the column just after our line limit so that we don’t type over it
set colorcolumn=+1

" In Git commit messages, also color the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

"
" #SEARCH
"

" Don’t keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase

"
" #MAPPINGS
"

" Toggle :paste mode with F2
set pastetoggle=<F2>

" 'jk' goes into normal mode from insert mode
" also prevents the cursor from moving
inoremap jk <Esc>`^

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Save file with root permissions
cmap w!! w !sudo tee % > /dev/null

" Visually selects characters last entered in insert mode
nnoremap gV `[v`]

" Move vertically by visual line
nnoremap j gj
nnoremap k gk
