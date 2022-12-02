:set autoindent
:set number
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set mouse=a
:set clipboard+=unnamedplus
:set pumheight=10
:set noshowmode
:set splitbelow
:set splitright

let mapleader = "\<Space>"
" Move lines around 
nnoremap <m-j> <CMD>m .-2<CR>
nnoremap <m-k> <CMD>m .+1<CR>
vnoremap <m-j> :m '>+1<CR>gv=gv
vnoremap <m-k> :m '<-2<CR>gv=gv

" Lazygit keybind
nnoremap <leader>lg <CMD>LazyGit<CR>

" Telescope bindings
nnoremap <leader>ff <CMD>Telescope find_files<CR>
nnoremap <leader>fb <CMD>Telescope keymaps<CR> 
nnoremap <leader>fr <CMD>Telescope oldfiles<CR>
nnoremap <leader>ft <CMD>Telescope live_grep<CR>
