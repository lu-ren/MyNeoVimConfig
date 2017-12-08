filetype on
filetype plugin indent on
syntax on
:set number
:set guioptions=c
:set noincsearch "Cursor does not jump at search highlighting
let g:python3_host_prog='/usr/bin/python3'
let g:loaded_matchparen=1
"vim-javascript plugin enable highlighting for html/css
let g:javascript_enable_domhtmlcss=1
"activate rainbow parenthesis
let g:rainbow_active=1
:set mouse=n

set tabstop=4       " The width of a TAB is set to 4.
		   " Still it is a \t. It is just that
		   " Vim will interpret it to be having
		   " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expands tabs to spaces
set termguicolors

execute pathogen#infect()

let g:neoterm_position='vertical'

"ctags setup
set tags=tags;

"NERDTree
map <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

"Tagbar
nmap <F8> :TagbarToggle<CR>

"highlight disable
map <C-h> :nohlsearch<CR>

"Vim-Sneak
let g:sneak#streak=1

"Airline settings
set laststatus=2
"Vim colorschemes
set background=dark
colo gruvbox
