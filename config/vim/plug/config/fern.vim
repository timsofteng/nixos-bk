map <C-p> :Fern . -reveal=% -drawer -toggle <CR>
let g:fern#renderer = "nerdfont"

" augroup my-glyph-palette
"     autocmd! *
"       autocmd FileType fern call glyph_palette#apply()
"         autocmd FileType nerdtree,startify call glyph_palette#apply()
"       augroup END
