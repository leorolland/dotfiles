set nocompatible
syntax enable
filetype plugin on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim' " Python autocompletion
Plug 'plasticboy/vim-markdown'
call plug#end()
" All of your Plugins must be added before the following line
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set ruler
set number
" enable airline at startup
set laststatus=2

" build on save dwmblocks
autocmd BufWritePost ~/clones/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
au BufWritePost *.c make

" Enable parenthesis regex match
set showmatch

