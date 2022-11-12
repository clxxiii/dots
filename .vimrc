" --- Basic Configuration ---
:set number
:set mouse=a
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4


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

Plug 'vim-airline/vim-airline' " Status Bar
Plug 'rafi/awesome-vim-colorschemes' " Retro Themes
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'wakatime/vim-wakatime' " Coding Time Tracker

call plug#end()

:colorscheme oceanic_material

" --- Status Bar Config ---
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
