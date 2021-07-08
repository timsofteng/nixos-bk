"remap leader key
let mapleader="\<space>"
nnoremap <SPACE> <Nop>

" Edit vimr configuration file
nnoremap confe :vs $MYVIMRC<CR>
" Reload vims configuration file
nnoremap confr :source $MYVIMRC<CR>

"Disable ability change all letters to lowercase
"in visual mode by press "u"
xnoremap u <nop>
"search word in visual mode by predding "//"
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"disable highlighting by double Esc
nnoremap <Esc><Esc> :noh <CR>

"write with sudo 
command -nargs=0 SUw w !sudo tee %
