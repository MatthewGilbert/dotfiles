set nocompatible      " get rid of Vi compatibility mode. SET FIRST!
set background=dark   " set font color
set autoindent        " Who doesn't like autoindent?
set expandtab         " Spaces are better than a tab character
set smarttab
set shiftwidth=4      " change number of spaces for tab
set softtabstop=4
set textwidth=79
set incsearch         " Highlight search as typed
" set nowrap            " don't wrap text
set number            " set line numbers
" set clipboard=unnamed
syntax enable         " set syntax highlighting
filetype plugin on
filetype indent on

"personal key mappings
map <F1> :ls<cr>
map <F2> :ls<cr>
nmap - <C-W>-
nmap + <C-W>+
nmap + <C-W>+
nmap <Tab> :bn<cr>
nmap <S-Tab> :bp<cr>
