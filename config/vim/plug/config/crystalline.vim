function! StatusLine(current, width)
  return ' %f%h%w%m%r '
        \ . ('%= %l/%L %c%V')
endfunction
let g:crystalline_statusline_fn = 'StatusLine'
set laststatus=2
