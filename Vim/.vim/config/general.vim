""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set undofile "For undo tree

set undodir=~/.vim/undo "For undo tree

set hidden " Unsaved buffer is hidden instead of closed

set expandtab " Convert tabs to spaces

set autoindent " Automatically indent lines

set tabstop=4 " Set tab to 4 spaces

set shiftwidth=4 " Set tab to 4 spaces

filetype off " Disable automatic file detection

set backspace=indent,eol,start " Make backspace key work

set autoread " Auto read when file is changed

set guicursor+=n-v-r:hor25 guicursor+=c-i:ver25 " Sets cursor to underline when in normal mode

set guicursor+=n-v-r-c-i:blinkwait200-blinkon700-blinkoff20 " Sets cursor to underline when in normal mode

syntax on " Syntax color highlighting

set nowrap " Does not wrap text

set laststatus=2 " Always display status line

set number " Shows line numbers

set hlsearch " Highlights matching search patterns

set nolist " Hides special characters

set foldcolumn=3 " Sets fold in column

set so=15 " Sets 15 lines to the cursor

set ignorecase " Ignores case when searching

set smartcase " Case insensitive only if all letters are lowercase

set foldcolumn=1 " Adds a little margin

set splitbelow " Opens splits below main pane

set incsearch " Incremental search

set showcmd " Shows entered commands

set conceallevel=0 " Hides concealed characters

set nonumber
set relativenumber " Relative line number

let g:auto_save = 1 " Enables autosave

let g:auto_save_events = ["InsertLeave", "TextChanged"] " Autosaves when text is changed

let g:tex_flavor = 'latex' " Latex

let g:ale_disable_lsp = 1 " Ale with Coc.nvim

autocmd CursorHold * silent call CocActionAsync('highlight') " Highlight symbol and references

" Changes PLug to Plug
iabbrev PLug Plug

" CtrlP config

let g:ctrlp_by_filename = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_show_hidden = 1
