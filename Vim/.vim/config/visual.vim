""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#tabline#enabled = 1

" Limelight config
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Seiya config
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
