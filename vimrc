"========== Settings ==========
set nocompatible               "be iMproved, required
set number                     "Line numbers
set colorcolumn=90             "Have a line after 80 char
set ruler                      "Add ruler at the bottom of vim
set encoding=utf-8             "Use UTF-8 encoding

set expandtab                  "Use spaces, not tabs
set tabstop=2                  "Two spaces per tab
set shiftwidth=2               "Auto-increment 2 spaces
set list                       "Show invisible chars
set listchars=tab:»-,trail:≈ "Set invisible chars

set hlsearch                   "Highlight search matches
set ignorecase                 "Search insensitive
set smartcase                  " ... unless the search contains a capital letter

filetype off                   "required
syntax enable

"========== Custom Mappings ==========


"========== Vundle Stuff ==========
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-rails'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line


"========== Theme ==========
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

