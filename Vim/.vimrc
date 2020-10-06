""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Must be first line, stops compatibility mode
set nocompatible

" For Control+Space
set hidden

" Spell checking
set spell spelllang=en_us

" Convert tabs to spaces
set expandtab

" Automatically indent lines
set autoindent

" Set tab to 4 spaces
set tabstop=4

" Set tab to 4 spaces
set shiftwidth=4

" Disable automatic file detection
filetype off

" Make backspace key work
set backspace=indent,eol,start

" Auto read when file is changed
set autoread

" Sets cursor to underline when in normal mode
set guicursor+=n-v-r:hor25
set guicursor+=i-c-ci:ver25

" Syntax color highlighting
syntax on

" Wraps text
set wrap

" Always display status line
set laststatus=2

" Matches matching Greater and Less than signs
set matchpairs+=<:>

" Shows line numbers
set number

" Highlights matching search patterns
set hlsearch

" Hides special characters
set nolist

" Sets 15 lines to the cursor
set so=15

" Ignores case when searching
set ignorecase

" Adds a little margin
set foldcolumn=1

" Opens splits below main pane
set splitbelow

" Enables autosave
let g:auto_save = 1

" Autosaves when text is changed
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Quit NERDTree when opening a file
let NERDTreeQuitOnOpen = 1

" Deleted files delete buffers as well
let NERDTreeAutoDeleteBuffer = 1

" Better NERDTree UI
let g:NERDTreeShowHidden =1

" Vim terminal plugin config
let g:terminal_shell = 'zsh'
let g:terminal_height = '20'


" Auto format on save
autocmd BufWritePost * Neoformat

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Changes leader key
let mapleader=' '

" Maps Leader+Tab to change tab
nnoremap <leader><TAB> gt

nnoremap <leader><left> :tabp<CR>

nnoremap <leader><right> :tabn<CR>

" Maps Leader+w to close tab
nnoremap <leader>w :tabclose<CR>

" Maps Leader+n to new tab
nnoremap <leader>n :tabnew<CR>

" Maps Leader+b to toggle bookmark
nnoremap <leader>b :BookmarkToggle<CR>

" Maps Leader+. to next bookmark
nnoremap <leader>. :BookmarkNext<CR>

" Maps Leader+, to previous bookmark
nnoremap <leader>, :BookmarkPrev<CR>

"Binds Alt+s to save
nnoremap <M-s> :w<cr>

" Pressing Escape twice exits terminal buffer
tnoremap <silent> <C-[><C-[> <C-\><C-n>

" Binds Alt+q to quit
map <M-q> :q<CR>

" Binds Alt-t to Nerdtree
nmap <M-t> :NERDTreeToggle<CR>

" Maps Control-M to Minimap Toggle
map <M-m> :MinimapToggle<CR>

" Binds F6 to Goyo
map <F6> :Goyo<CR>

" Toggle spelling
map <F5> :setlocal spell! spelllang=en_us<CR>

" Toggles floating terminal
map <C-M-n> :FloatermToggle<CR>

" Binds Control-l to redraw screen and remove highlights
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Remaps Scroll up and down
nnoremap <S-k> <C-u>
nnoremap <S-j> <C-d>

" Remaps Tab to choose suggestion Coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Aborts coc autosuggestions
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Inserts suggested text when Enter is pressed Coc
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Highlight symbol and references
autocmd CursorHold * silent call CocActionAsync('highlight')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets up Vundle for extensions
set rtp+=~/.vim/bundle/Vundle.vim

" Plugin start
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                       " Vundle extension manager
Plugin 'neoclide/coc.nvim'                          " Coc for code linting
Plugin 'wakatime/vim-wakatime'                      " Wakatime for measuring how much time is spent in Vim
Plugin 'preservim/nerdtree'                         " Nerdtree for viewing file tree
Plugin 'jiangmiao/auto-pairs'                       " Auto-pairs automatically closes brackets
Plugin 'junegunn/fzf'                               " Fuzzy finder
Plugin 'vim-airline/vim-airline'                    " Statusline for Vim
Plugin 'vim-airline/vim-airline-themes'             " Themes for Vim-airline
Plugin 'thaerkh/vim-indentguides'                   " Guides for indentation levels
Plugin 'mhinz/vim-startify'                         " Nice Vim start screen
Plugin 'arcticicestudio/nord-vim'                   " Nord theme for Vim
Plugin 'tpope/vim-fugitive'                         " Git plugin for Vim
Plugin '907th/vim-auto-save'                        " Autosave for Vim
Plugin 'junegunn/goyo.vim'                          " Distraction free Vim
Plugin 'wfxr/minimap.vim'                           " Minimap for Vim
Plugin 'MattesGroeger/vim-bookmarks'                " Bookmarks
Plugin 'ryanoasis/vim-devicons'                     " Icons for Vim
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'    " Nerdtree syntax highlighting
Plugin 'kevinhwang91/rnvimr'                        " Ranger for Vim
Plugin 'voldikss/vim-floaterm'                      " Floating terminal
Plugin 'sbdchd/neoformat'                           " Vim code formating
Plugin 'JamshedVesuna/vim-markdown-preview'         " Preview markdown files

" Plugin end
call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim start screen header
let g:startify_custom_header =
        \ map(split(system('sh ~/Documents/Vim-Startup'), '\n'), '"". v:val') + ['']

" Vim start screen list
let g:startify_lists = [
        \{'type': 'bookmarks', 'header': ['     Bookmarks']             },
        \{'type': 'commands', 'header': ['      Commands']              },
        \]

" Vim start screen bookmarks
let g:startify_bookmarks = [ {'1': '~/.vimrc'}, {'2': '~/.zshrc'}, {'3': '~/.tmux.conf'}, {'4': '~/.config/alacritty/alacritty.yml'}, {'5': '~/.hammerspoon/init.lua'}, {'6': '~/Documents/MD Notes/'}]

" Vim start screen commands
let g:startify_commands = [
    \ {'h': ['Help', 'help']},
    \ {'i': ['Install plugins', 'PluginInstall']},
    \ {'u': ['Update plugins', 'PluginUpdate']},
    \ {'c': ['Clean plugins', 'PluginClean']},
    \]


"Nord colorscheme
colorscheme nord

" Customize Goyo width
let g:goyo_width = 100

" Vim minimap highlighting
let g:minimap_highlight = 'Keyword'
let g:minimap_width = 7

" Airline config
let g:airline#extensions#nerdtree_statusline = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#tabline#enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Irssi
command Irc FloatermNew irssi
cnoreabbrev irc Irc

" Newsboat
command News FloatermNew newsboat
cnoreabbrev news News

" Htop
command Htop FloatermNew htop
cnoreabbrev htop Htop

