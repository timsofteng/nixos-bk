let g:floaterm_autoclose = 1

let g:floaterm_width=0.85
let g:floaterm_height=0.85

let g:floaterm_keymap_toggle = '<C-t>t'
let g:floaterm_keymap_next   = '<C-t>n'
let g:floaterm_keymap_prev   = '<C-t>p'
let g:floaterm_keymap_new    = '<C-t>o'
let g:floaterm_keymap_kill   = '<C-t>q'


"invoked programs
nnoremap <Leader>nnn :FloatermNew nnn <CR>
nnoremap <Leader>lg :FloatermNew lazygit <CR>
