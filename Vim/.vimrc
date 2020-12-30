" General

set undofile " Undo even after file close

set undodir=~/.vim/undo " Undo even after file close

set hidden " Unsaved buffer is hidden instead of closed

set autoindent " Automatically indent lines

set tabstop=4 " Set tab to 4 spaces
set shiftwidth=4 " Set tab to 4 spaces
set expandtab " Convert tabs to spaces

filetype off " Filetype detection off

set backspace=indent,eol,start " Make backspace key work

set autoread " Auto read when file is changed

set guicursor+=n-v-r:hor25 guicursor+=c-i:ver25 " Sets cursor to underline when in normal mode
set guicursor+=n-v-r-c-i:blinkwait10-blinkon20-blinkoff20 " Blink cursor

syntax on " Syntax color highlighting

set nowrap " Does not wrap text

set laststatus=2 " Always display status line

set hlsearch " Highlights matching search patterns

set nolist " Hides special characters

set so=15 " Sets 15 lines to the cursor

set ignorecase " Ignores case when searching

set smartcase " Case insensitive only if all letters are lowercase

set foldcolumn=1 " Adds a little margin

set splitbelow " Opens splits below main pane

set incsearch " Incremental search

set showcmd " Shows entered commands

set conceallevel=0 " Does not hide concealed characters

set nonumber " Relative number starts at 0

set relativenumber " Relative line number

set numberwidth=3 " Line number column width

set foldmethod=manual " Manual folding

let g:tex_flavor = 'latex' " Latex

let g:ale_disable_lsp = 1 " Ale with Coc.nvim

autocmd CursorHold * silent call CocActionAsync('highlight') " Highlight symbol and references

" Changes PLug to Plug
cabbrev PLug Plug
iabbrev PLug Plug

" Clean LaTeX workspace on quit
autocmd User VimtexEventQuit VimtexClean

" Spell suggestion size
set spellsuggest=7

" Hide mode
set noshowmode

" Plugins

call plug#begin('~/.vim/plugged')                                           " Plugin start

Plug 'neoclide/coc.nvim'                                                    " Coc for code linting and completion
Plug 'mhinz/vim-startify'                                                   " Nice Vim start screen
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'                                                   " Git plugin for Vim
Plug 'junegunn/goyo.vim'                                                    " Distraction free Vim
Plug 'wfxr/minimap.vim'                                                     " Minimap for Vim
Plug 'ryanoasis/vim-devicons'                                               " Icons for Vim
Plug 'voldikss/vim-floaterm'                                                " Floating terminal
Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown'  }                 " Markdown preview for Vim
Plug 'RRethy/vim-illuminate'                                                " Highlights word under cursor
Plug 'sbdchd/neoformat'                                                     " A formatter for Vim
Plug 'honza/vim-snippets'                                                   " Extra snippets for Vim
Plug 'rhysd/git-messenger.vim'                                              " Reveal git commit messages
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }                       " File tree for Vim
Plug 'preservim/nerdcommenter'                                              " Vim easy comment
Plug 'dense-analysis/ale'                                                   " Linting
Plug 'lervag/vimtex', { 'for': 'tex' }                                      " LaTeX plugin for Vim
Plug 'liuchengxu/vista.vim'                                                 " Tag bar for Vim
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-skylight'
Plug 'machakann/vim-swap'

call plug#end()                                                             " Plugin end

" Mappings

" General mappings

" Changes leader key
let mapleader=' '

" Toggles NERDtree
map <silent> <M-t> :NERDTreeToggle<CR>

" Toggles minimap
map <silent> <M-m> :MinimapToggle<CR>

" Toggles tagbar
map <silent> <C-M-t> :Vista!! <CR>

" Maps redraw screen and remove highlights
map <silent> <M-r> :nohl<CR><C-l>

" Toggles floating terminal
map <silent> <C-M-n> :FloatermToggle<CR>

" Maps Goyo
map <silent> <M-g> :Goyo<CR>

" Toggle spelling
map <silent> <C-M-s> :setlocal spell! spelllang=en_us<CR>

" Pressing Escape twice exits terminal buffer
tnoremap <silent> <C-[><C-[> <C-\><C-n>

" Maps quit and save
nmap <silent> <M-q> :q<CR>
nmap <silent> <M-s> :w<CR>

" Easier commands
nnoremap ; :

" Goes to file
map <silent> <C-o> gf

" Remaps Scroll up and down
map <M-k> <C-u>
map <M-j> <C-d>

" Sources Vim config file
nmap <silent> <C-A-r> :source ~/.vimrc <CR>

" Goto definition coc.nvim
nmap <silent> gd <Plug>(coc-definition)

" Large mappings

" Remaps Tab to choose from suggestions Coc
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() r "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enter to confirm suggestion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Fn mappings

" Toggle cursor lines (F1)
map <silent> <F1> :set cursorline! <BAR> :set cursorcolumn! <CR>

" Trim whitespace (F2)
map <silent> <F2> :let _save_pos=getpos(".") <Bar>
    \ :let _s=@/ <Bar>
    \ :%s/\s\+$//e <Bar>
    \ :let @/=_s <Bar>
    \ :nohl <Bar>
    \ :unlet _s<Bar>
    \ :call setpos('.', _save_pos)<Bar>
    \ :unlet _save_pos<CR><CR>

" Toggle cursorbind
nmap <silent> <F3> :call ToggleCursorbind()<CR>

" Run code with keybinding (F4)
autocmd BufWinEnter *.py nmap <silent> <F4> :w<CR>:FloatermNew python3 '%:p'<CR>
autocmd BufWinEnter *.sh nmap <silent> <F4> :w<CR>:FloatermNew sh '%:p'<CR>
autocmd BufWinEnter *.cpp nmap <silent> <F4> :w<CR>:!g++ '%:p'<CR>:FloatermNew ./a.out<CR>
autocmd BufWinEnter *.md nmap <silent> <F4> :w<CR>:MarkdownPreview<CR>
autocmd BufWinEnter *.tex nmap <silent> <F4> :w<CR>:VimtexCompile<CR>

set autochdir

" Debug (F5)
autocmd BufWinEnter *.py nmap <silent> <F5> :w<CR>:FloatermNew python3 -m pdb '%:p'<CR>
autocmd BufWinEnter *.cpp nmap <silent> <F5> :FloatermNew lldb ./a.out<CR>
autocmd BufWinEnter *.sh nmap <silent> <F5> :w<CR>:FloatermNew bash -x '%:p'<CR>

" Save and quit Vim (F6)
nmap <silent> <F6> :wqa<CR>

" Toggle fold (F7)
map <silent> <F7> za

" Create fold in visual (F8)
map <silent> <F8> zf

" Delete fold (F9)
map <silent> <F9> zd

" Format code (F10)
map <silent> <F10> :Neoformat <CR>

" Go to previous error ale (F11)
map <silent> <F11> <Plug>(ale_previous)

" Go to next error ale (F12)
map <silent> <F12> <Plug>(ale_next)

" Buffers and tabs

" Close buffer/tab
nnoremap <silent> <M-w> :bd <CR>

" New buffer
nnoremap <silent> <C-n> :new <CR>

" New tab
nnoremap <silent> <C-t> :tabnew <CR>

" Next buffer
nnoremap <silent> <M-TAB> :bn <CR>

" Next tab
nnoremap <silent> <S-TAB> :tabn <CR>

" Windows

" Horizontal and vertical splits
noremap <silent> <C-W>h :split <CR>
noremap <silent> <C-W>v :vsplit <CR>

" Window navigation
noremap <silent> <Left> <C-w>h
noremap <silent> <Down> <C-w>j
noremap <silent> <Up> <C-w>k
noremap <silent> <Right> <C-w>l

" Window resizing
noremap <silent> <M-Left> :vertical resize +5 <CR>
noremap <silent> <M-Down> :res -5 <CR>
noremap <silent> <M-Up> :res +5 <CR>
noremap <silent> <M-Right> :vertical resize -5 <CR>

" Leader bindings

" Show Git messages
map <silent> <leader>g :GitMessenger <CR>

" Copy to clipboard
vmap <leader>y "+y

" Fzf bindings

nmap <silent> <M-x>f. :Files <CR>
nmap <silent> <M-x>ft :Filetypes <CR>

nmap <silent> <M-x>gf :GFiles <CR>
nmap <silent> <M-x>gs :GFiles? <CR>
nmap <silent> <M-x>gc :Commits <CR>

nmap <silent> <M-x>c :Colors <CR>
nmap <silent> <M-x>a :Ag <CR>
nmap <silent> <M-x>r :Rg <CR>

nmap <silent> <M-x>l :Lines <CR>
nmap <silent> <M-x>bl :BLines <CR>
nmap <silent> <M-x>m :Marks <CR>

nmap <silent> <M-x>w :Windows <CR>
nmap <silent> <M-x>b :Buffers <CR>

nmap <silent> <M-x>hh :History <CR>
nmap <silent> <M-x>h: :History: <CR>
nmap <silent> <M-x>h/ :History/ <CR>

nmap <silent> <M-x>c :Commands <CR>
nmap <silent> <M-x>ht :Helptags <CR>

nmap <silent> <M-x> :FZF <CR>

" UI

" Vim start screen header
let g:startify_custom_header =
            \ map(split(system('sh ~/Documents/Vim-Startup'), '\n'), '"". v:val') + ['']

"Vim start screen list
let g:startify_lists = [
            \{'type': 'bookmarks', 'header': ['     Bookmarks']             },
            \{'type': 'commands', 'header': ['      Commands']              },
            \]

" Vim start screen bookmarks
let g:startify_bookmarks = [
            \{'1': '~/.vimrc'},
            \{'2': '~/.zshrc'},
            \{'3': '~/.tmux.conf'},
            \{'4': '~/.config/alacritty/alacritty.yml'},
            \{'5': '~/.hammerspoon/init.lua'},
            \{'6': '~/Documents/MD Notes/'}
            \]

" Vim start screen commands
let g:startify_commands = [
        \{'h': ['Help', 'help']},
        \{'n': ['New file', 'new']},
        \{'i': ['Install plugins', 'PlugInstall']},
        \{'u': ['Update plugins', 'PlugUpdate']},
        \{'p': ['Upgrade Vim-Plug', 'PlugUpgrade']},
        \{'c': ['Clean plugins', 'PlugClean']},
        \]

" Colorscheme
colorscheme onedark
set termguicolors

" Customize Goyo width
let g:goyo_width = 100

" Vim minimap highlighting
let g:minimap_highlight = 'Keyword'
let g:minimap_width = 7

" Seiya config
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']


" Statusline config

" Ale linting
function! LinterStatus() abort
   let l:counts = ale#statusline#Count(bufnr(''))
   let l:all_errors = l:counts.error + l:counts.style_error
   let l:all_non_errors = l:counts.total - l:all_errors
   return l:counts.total == 0 ? '' : printf(
   \ ' Warnings: %d Errors: %d ⎜',
   \ l:all_non_errors,
   \ l:all_errors
   \)
endfunction

" Highlighting
hi NormalColor guifg=White guibg=#007525
hi InsertColor guifg=White guibg=#2c3978
hi ReplaceColor guifg=White guibg=#731d00
hi VisualColor guifg=White guibg=#424957

" Empty status
set statusline=

" Modes
set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#VisualColor#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#VisualColor#%{(mode()=='t')?'\ \ TERMINAL\ ':''}

" File
set statusline+=⎜
set statusline+=\ %F
set statusline+=\ \╱

" Changed
set statusline+=\ %m

" Switch to right side
set statusline+=%=
set statusline+=\ \╲

" Filetype
set statusline+=\ Filetype:
set statusline+=\ %y
set statusline+=\ \╲

" Line and column
set statusline+=\ Line:
set statusline+=\ %l
set statusline+=\/%L
set statusline+=\,
set statusline+=\ Column:
set statusline+=\ %c
set statusline+=\ \╲

" Percentage through file
set statusline+=\ %p%%
set statusline+=\ 

" Status of linter
set statusline+=%{LinterStatus()}

" Icons ╱╲⎜

" Functions

" Toggle cursor bind
function! ToggleCursorbind()
  if &cursorbind == 1
    set nocursorbind
  else
    set cursorbind
  endif
endfunction

" Remember folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave ?* silent! mkview
  autocmd BufWinEnter ?* silent! loadview
augroup END

command CocInstallAll :CocInstall coc-snippets coc-calc coc-python coc-sh coc-vimtex coc-clangd coc-markdownlint coc-json coc-html coc-css coc-tex <CR>
command TSInstallAll :TSInstall python bash cpp json html css

" Plugin Config

"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  ensure_installed = "maintained",
"  highlight = {
"    enable = true
"  },
"}
"EOF

set foldmethod=manual
"set foldexpr=nvim_treesitter#foldexpr()
