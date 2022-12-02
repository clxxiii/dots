" Import All plugins

call plug#begin()
" Visual Customization
Plug 'goolord/alpha-nvim' " Splash Screen
Plug 'nvim-lualine/lualine.nvim' " Status Bar
Plug 'kvrohit/mellow.nvim' " Color Scheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " Color Scheme
Plug 'romgrk/barbar.nvim' " Tabs
Plug 'xiyaowong/nvim-transparent' " Transparent Background
Plug 'rcarriga/nvim-notify' " Notification Boxes
Plug 'ryanoasis/vim-devicons' " Developer Icons

" QoL
Plug 'folke/which-key.nvim' " Key Suggestions
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'nvim-tree/nvim-tree.lua' " File Explorer
Plug 'nvim-lua/plenary.nvim' " Telescope Dependency
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " File Search
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TsUpdate'} " 
Plug 'kyazdani42/nvim-web-devicons' " Status Bar Icons
Plug 'folke/trouble.nvim' " Error box
Plug 'tanvirtin/vgit.nvim' " Git changes in gutter
Plug 'akinsho/toggleterm.nvim' " Better Built-in Terminal

" Tools
Plug 'wakatime/vim-wakatime' " Time Logging
Plug 'manzeloth/live-server' " Live Server
Plug 'sbdchd/neoformat' " Auto formatter
Plug 'kdheepak/lazygit.nvim' " Lazygit

" Extra Syntax Highlighting
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', { 'branch': 'main' }

" Auto complete
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
source ~/.config/nvim/plugins/nvim-tree.vim
source ~/.config/nvim/plugins/which-key.vim
source ~/.config/nvim/plugins/cmp.vim
source ~/.config/nvim/plugins/neoformat.vim
source ~/.config/nvim/plugins/barbar.vim
source ~/.config/nvim/plugins/trouble.vim
source ~/.config/nvim/plugins/vgit.vim
source ~/.config/nvim/plugins/toggleterm.vim
