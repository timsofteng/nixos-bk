if has("persistent_undo")
    set undodir=$HOME/.vim/undodir"
    set undofile
endif

nnoremap <Leader>hh :UndotreeToggle<cr>
