let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/nixos
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 config/alacritty/alacritty.yml
badd +132 config/sway/config
badd +43 sway.nix
badd +175 configuration.nix
badd +9 config/nvim/lua/basic.lua
badd +25 flake.nix
badd +75 config/zsh/zshrc
badd +11 greetd.nix
badd +57 config/nvim/lua/plugins/lsp.lua
badd +47 home-manager.nix
badd +6 config/foot/foot.ini
badd +124 config/nvim/lua/plugins.lua
badd +4 config/nvim/lua/plugins/hop.lua
badd +9 config/nvim/lua/plugins/lightspeed.lua
badd +1 config/vim/plug/config/signify.vim
badd +15 config/nvim/lua/plugins/compe.lua
badd +13 config/mimeapps.list
badd +3 config/nvim/lua/colorscheme.lua
badd +22 config/nvim/lua/plugins/vgit.lua
badd +3 config/vim/plug/plugins.vim
badd +1 Documents/test.md
argglobal
%argdel
edit configuration.nix
argglobal
balt home-manager.nix
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 175 - ((39 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 175
normal! 012|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
