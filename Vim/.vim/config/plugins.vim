""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged') " Plugin start

Plug 'neoclide/coc.nvim'                                                    " Coc for code linting and completion
Plug 'wakatime/vim-wakatime'                                                " Wakatime for measuring how much time is spent in Vim
Plug 'vim-airline/vim-airline'                                              " Statusline for Vim
Plug 'vim-airline/vim-airline-themes'                                       " Themes for Vim-airline
Plug 'mhinz/vim-startify'                                                   " Nice Vim start screen
Plug 'arcticicestudio/nord-vim'                                             " Nord theme
Plug 'ghifarit53/daycula-vim'                                               " Daycula theme
Plug 'joshdick/onedark.vim'                                                 " OneDark theme
Plug 'tpope/vim-fugitive'                                                   " Git plugin for Vim
Plug 'junegunn/goyo.vim'                                                    " Distraction free Vim
Plug 'wfxr/minimap.vim'                                                     " Minimap for Vim
Plug 'ryanoasis/vim-devicons'                                               " Icons for Vim
Plug 'voldikss/vim-floaterm'                                                " Floating terminal
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }    " Markdwon preview for Vim
Plug 'simnalamburt/vim-mundo'                                               " Undo tree
Plug 'RRethy/vim-illuminate'                                                " Highlights word under cursor
Plug 'preservim/tagbar'                                                     " Vim tagbar
Plug 'sbdchd/neoformat'                                                     " A formatter for Vim
Plug 'miyakogi/seiya.vim'                                                   " Make Vim transparent
Plug 'honza/vim-snippets'                                                   " Extra snippets for Vim
Plug 'nathanaelkane/vim-indent-guides'                                      " Indent guides for Vim
Plug 'rhysd/git-messenger.vim'                                              " Reveal git commit messages
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }                      " File tree for Vim
Plug 'tpope/vim-speeddating'                                                " Increment dates
Plug 'airblade/vim-gitgutter'                                               " Git diff in sign column
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
Plug 'joeytwiddle/sexy_scroller.vim'
Plug 'preservim/nerdcommenter'

call plug#end() " Plugin end
