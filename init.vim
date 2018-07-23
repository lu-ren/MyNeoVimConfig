"Dein plugin manager setup
if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
endif

filetype on
filetype plugin indent on
syntax on

"Plugins list starts here
call dein#add('Shougo/deoplete.nvim')
call dein#add('junegunn/fzf', {'depends': 'fzf'})
call dein#add('junegunn/fzf.vim', {'build': './install', 'rtp': ''})
call dein#add('vim-airline/vim-airline')
call dein#add('juntinmk/vim-sneak')
call dein#add('tpope/vim-surround')

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

let g:neoterm_position='vertical'

"ctags setup
set tags=tags;

"NERDTree
map <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

:set ic "Case insensitive

"Tagbar
nmap <F8> :TagbarToggle<CR>

"highlight disable
map <C-h> :nohlsearch<CR>

"ctrlp to fzf
map <C-p>f :FZF<CR>
map <C-p>b :Buffer<CR>

"Disable line number in term
au TermOpen * setlocal nonumber norelativenumber

"Airline settings
set laststatus=2
"Vim colorschemes
set background=dark
colo spacegray
