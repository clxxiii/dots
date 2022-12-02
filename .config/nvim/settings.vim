:set autoindent
:set number
:set relativenumber
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set mouse=a
:set clipboard+=unnamedplus
:set pumheight=10
:set noshowmode
:set splitbelow
:set splitright

" Move lines around 
nnoremap <m-j> <CMD>m .-2<CR>
nnoremap <m-k> <CMD>m .+1<CR>
vnoremap <m-j> :m '>+1<CR>gv=gv
vnoremap <m-k> :m '<-2<CR>gv=gv
