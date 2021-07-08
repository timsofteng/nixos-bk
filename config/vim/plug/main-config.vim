"Plugins configs
source $HOME/.vim/plug/config/fzf.vim
"source $HOME/.vim/plug/config/floaterm.vim
source $HOME/.vim/plug/config/maximizer.vim
source $HOME/.vim/plug/config/tmux-navigator.vim
source $HOME/.vim/plug/config/delete-hidden-buffers.vim
source $HOME/.vim/plug/config/ctrlsf.vim
source $HOME/.vim/plug/config/closetag.vim
source $HOME/.vim/plug/config/prettier.vim
"source $HOME/.vim/plug/config/coc.vim
source $HOME/.vim/plug/config/lsc.vim
source $HOME/.vim/plug/config/fern.vim
source $HOME/.vim/plug/config/gina.vim
source $HOME/.vim/plug/config/signify.vim
source $HOME/.vim/plug/config/crystalline.vim
"source $HOME/.vim/plug/config/undotree.vim
if !has('nvim')
source $HOME/.vim/plug/config/ale.vim
"source $HOME/.vim/plug/config/mucomplete.vim
endif
if has('nvim')
source $HOME/.vim/plug/config/telescope.nvim
endif
