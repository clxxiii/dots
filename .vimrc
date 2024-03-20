" --- Basic Configuration ---
set number
set mouse=a
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=4
set laststatus=2

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" --- Import Plugins ---
call plug#begin()

Plug 'itchyny/lightline.vim' " Status Bar
Plug 'catppuccin/vim', { 'as': 'catppuccin' } " Theme
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'wakatime/vim-wakatime' " Coding Time Tracker

call plug#end()

set termguicolors
colorscheme catppuccin_mocha


let g:lightline = {
      \ 'colorscheme': 'catppuccin_mocha',
      \ }
