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
nnoremap <leader>fp <CMD>Telescope projects<CR>

" ToggleTerm
nnoremap <C-\> <CMD>ToggleTerm<CR>
nnoremap <leader>n <CMD>lua _nap_toggle()<CR>

" Icon Picker
nnoremap <leader>i <CMD>IconPickerNormal<CR>

" Markdown & Latex Preview
nnoremap <leader>ps <CMD>lua require("knap").toggle_autopreviewing()<CR>
nnoremap <leader>pc <CMD>lua require("knap").close_viewer()<CR>
nnoremap <leader>pj <CMD>lua require("knap").forward_jump()<CR>
nnoremap <leader>po <CMD>lua require("knap").process_once()<CR>

" QoL Terminal Commands
tnoremap <ESC> <C-\><C-n>
tnoremap <C-\> <C-\><C-n><CMD>ToggleTerm<CR>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

