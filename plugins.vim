" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'othree/html5.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
call plug#end()
