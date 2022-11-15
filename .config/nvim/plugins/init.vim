call plug#begin()
Plug 'goolord/alpha-nvim' " Splash Screen
Plug 'nvim-lualine/lualine.nvim' " Status Bar
Plug 'kvrohit/mellow.nvim' " Color Scheme
Plug 'romgrk/barbar.nvim' " Tabs
Plug 'folke/which-key.nvim' " Key Suggestions
Plug 'nvim-tree/nvim-tree.lua' " File Explorer
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " File Search
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto completion
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown Preview
Plug 'rcarriga/nvim-notify' " Notification Boxes
Plug 'xiyaowong/nvim-transparent' " Transparent Background
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TsUpdate'} " 
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'wakatime/vim-wakatime' " Time Logging
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'kyazdani42/nvim-web-devicons' " Status Bar Icons
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'nvim-lua/plenary.nvim' " Telescope Dependency
call plug#end()

source plugins/alpha.vim
source plugins/lualine.vim
source plugins/telescope.vim
source plugins/nvim-tree.vim
source plugins/which-key.vim