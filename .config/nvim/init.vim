:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard="unnamedplus"
:set noshowmode
:set cursorline
:set splitbelow
:set splitright

highlight EndOfBuffer guifg=bg

call plug#begin()

Plug 'goolord/alpha-nvim' " Splash screen
Plug 'nvim-lualine/lualine.nvim' " Status Bar
Plug 'kyazdani42/nvim-web-devicons' " Status Bar Icons
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'romgrk/barbar.nvim' " Tabs
Plug 'folke/which-key.nvim' " Key Suggestions
Plug 'wakatime/vim-wakatime' " Time Logging
Plug 'nvim-tree/nvim-tree.lua' " File Explorer
Plug 'nvim-lua/plenary.nvim' " File Search
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " File Search
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto completion
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown Preview
call plug#end()

" Lua Block
"
lua << END

-- Start plugins without configs
require('lualine').setup()
require('which-key').setup()
require('alpha').setup(require'alpha.themes.dashboard'.config)

-- disable default file handler
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- start nvimtree
require('nvim-tree').setup()
END

" Prefered default colorscheme
:colorscheme gruvbox

" ---------------
" KEY BINDINGS
" ---------------

" -- Tab Bindings --

" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
