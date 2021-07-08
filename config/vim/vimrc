"ingore system locale
language messages C

"fix npm watch issue
set backupcopy=yes

" allow buffer switching without saving
"set hidden

"added dialog before closing buffers
set confirm

"maping keys and shortcuts
source $HOME/.vim/map.vim
"plug
source $HOME/.vim/plug/plugins.vim
"plugins config file
source $HOME/.vim/plug/main-config.vim

set autoread " detect when a file is changed
"autocmd!
"  autocmd BufEnter,FocusGained * silent! checktime
"augroup END


"MOUSE
set mouse=a
"Mouse windows resizing
set ttymouse=sgr

set tabstop=2 shiftwidth=2 expandtab


set diffopt+=vertical  " Always use vertical diffs

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers

"Apperance
"set number
"set relativenumber
set linebreak " set soft wrapping
set smartindent
set cursorline " Highlight the line currently under cursor
set scrolloff=5 "scroll page from 5 top/bottom line
"set ttyfast " faster redrawing


"Частота обновления вима
set updatetime=1000

" Display command line’s tab complete options as a menu
set wildmenu

"For correct appear in some terminals
if exists('+termguicolors')
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
 set termguicolors
endif

" Colorscheme
set background=dark
"set background=light
"colorscheme solarized8
colorscheme gruvbox8
let g:gruvbox_transp_bg = 1

set encoding=utf-8
" Set font competable with icons
"set guifont=DejavuSansMono\ Nerd\ Font\ 10

"js
"hi def link jsObjectKey Type


syntax enable
syntax sync fromstart
