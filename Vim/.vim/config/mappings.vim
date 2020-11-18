""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Changes leader key
let mapleader=' '

" Toggles NERDtree
map <silent> <M-t> :NERDTreeToggle<CR>

" Toggles minimap
map <silent> <M-m> :MinimapToggle<CR>

" Toggles undo tree
map <silent> <M-u> :MundoToggle<CR>

" Toggles tagbar
map <silent> <C-M-t> :TagbarToggle <CR>

" Maps redraw screen and remove highlights
map <silent> <M-r> :nohl<CR><C-l>

" Toggles floating terminal
map <silent> <C-M-n> :FloatermToggle<CR>

" Maps Goyo
map <silent> <M-g> :Goyo<CR>

" Ale linting
map <silent> <M-l> :ALELint<CR>

" Format
map <silent> <M-f> :Neoformat<CR>

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
nnoremap <M-k> <C-u>
nnoremap <M-j> <C-d>

" Maps for CtrlP fuzzy finder
nmap <silent> <C-p> :CtrlP<CR>

" Sources Vim config file
nmap <silent> <C-A-r> :source ~/.vimrc <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Large mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remaps Tab to choose from suggestions Coc
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

" Enter to confirm suggestion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fn mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Copy to clipboard (F1)
map <silent> <F1> "*y

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
autocmd BufWinEnter *.py nmap <silent> <F4> :w<CR>:FloatermNew python3 %:p<CR>
autocmd BufWinEnter *.sh nmap <silent> <F4> :w<CR>:FloatermNew sh %:p<CR>
autocmd BufWinEnter *.cpp nmap <silent> <F4> :w<CR>:!g++ %:p<CR>:FloatermNew ./a.out<CR>
autocmd BufWinEnter *.md nmap <silent> <F4> :w<CR>:MarkdownPreview<CR>

" Open ranger (F5)
nmap <silent> <F5> :FloatermNew ranger<CR>

" Open terminal (F6)
nmap <silent> <F6> :FloatermToggle<CR>

" Toggle fold (F7)
map <silent> <F7> za

" Create fold in visual (F8)
map <silent> <F8> zf

" Delete fold (F9)
map <silent> <F9> zd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Maps Meta+w to close buffer
nnoremap <silent> <M-w> :bd <CR>

" Maps Meta+n to new buffer
nnoremap <silent> <M-n> :new <CR>

" Maps Meta+Tab to next buffer
nnoremap <silent> <M-TAB> :bn <CR>

" Maps SHift-Meta+Tab to next tab
nnoremap <silent> <S-M-TAB> :tabn <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Horizontal and  vertical splits
noremap <silent> <C-W>v :vsplit <CR>
noremap <silent> <C-W>h :split <CR>

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
