set nocompatible
filetype off
set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on

:set guicursor+=n:hor20-Cursor/lCursor

syntax on
set wrap
set ttyfast
set ttyfast
set laststatus=2
set matchpairs+=<:>
set number
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
set hlsearch

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
