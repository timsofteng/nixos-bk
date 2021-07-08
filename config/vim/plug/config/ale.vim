let g:ale_disable_lsp = 1
"linting delay
let g:ale_lint_delay = 1500
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 0

" Fix files with prettier
let g:ale_fixers = ['prettier']

"let g:ale_linter_aliases = {'vue': ['vue', 'javascript', 'html', 'css'], 'html': ['html', 'javascript', 'css']}

nnoremap <Leader>af :ALEFix <CR>
nnoremap <Leader>al :ALELint <CR>
