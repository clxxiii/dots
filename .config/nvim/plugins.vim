" Import All plugins

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
Plug 'wakatime/vim-wakatime' " Time Logging
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'kyazdani42/nvim-web-devicons' " Status Bar Icons
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'nvim-lua/plenary.nvim' " Telescope Dependency
Plug 'sbdchd/neoformat' " Auto formatter
Plug 'folke/trouble.nvim' " Error box


Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()

" Reference additional plugin configuration
source ~/.config/nvim/plugins/alpha.vim
source ~/.config/nvim/plugins/lualine.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nvim-tree.vim
source ~/.config/nvim/plugins/which-key.vim
source ~/.config/nvim/plugins/cmp.vim
source ~/.config/nvim/plugins/neoformat.vim
source ~/.config/nvim/plugins/barbar.vim
source ~/.config/nvim/plugins/trouble.vim
