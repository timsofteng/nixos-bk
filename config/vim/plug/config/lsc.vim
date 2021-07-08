set completeopt=menu,menuone,noinsert,noselect

"Use all the defaults (recommended):
let g:lsc_auto_map = v:true

let g:lsc_server_commands = {
 \ 'html': 'html-languageserver --stdio',
 \ 'css': 'css-languageserver --stdio',
 \  'javascript': {
 \    'command': 'typescript-language-server --stdio',
 \  },
 \  'typescript': {
 \    'command': 'typescript-language-server --stdio',
 \  },
 \  'typescriptreact': {
 \    'command': 'typescript-language-server --stdio',
 \  },
 \  'vue': 'vls',
 \}

let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'Rename': '<Leader>lr'
    \}

let g:lsc_enable_autocomplete  = v:true
