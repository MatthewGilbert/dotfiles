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

"for vim pathongen
execute pathogen#infect()
autocmd BufWritePost *.py call Flake8() " syntax checking on save file

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Oct-17 20:00):
" Change the <LocalLeader> key:
let maplocalleader = ","
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif
" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Force Vim to use 256 colors if running in a capable terminal emulator:
if &term =~ "xterm" || &term =~ "256" || $DISPLAY != "" || $HAS_256_COLORS == "yes"
    set t_Co=256
endif

" There are hundreds of color schemes for Vim on the internet, but you can
" start with color schemes already installed.
" Click on GVim menu bar "Edit / Color scheme" to know the name of your
" preferred color scheme, then, remove the double quote (which is a comment
" character, like the # is for R language) and replace the value "not_defined"
" below:
"colorscheme not_defined
