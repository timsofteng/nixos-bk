nnoremap <Leader>ff :Files <CR>
nnoremap <Leader>bb :Buffers <CR>
nnoremap <Leader>fr :Rg <CR>

let g:fzf_action = {
      \'ctrl-s': 'split', 
      \'ctrl-v': 'vsplit', 
      \'ctrl-d': 'wall | BD' }




"insert selected text to rg from visual mode
function GrepVisualSelection()
    let [line1, col1] = getpos("'<")[1:2]
    let [line2, col2] = getpos("'>")[1:2]
    let line = getline(line1)
    let line = line[col1 - 1 : col2 - (&selection == 'inclusive' ? 1 : 2)]
    return line
endfunction

vnoremap <silent> <leader>fr :<C-U>Rg <C-R>=GrepVisualSelection()<CR><CR>
