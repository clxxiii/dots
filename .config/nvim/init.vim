:set autoindent
:set number
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

" highlight EndOfBuffer guifg=bg

call plug#begin()

Plug 'goolord/alpha-nvim' " Splash screen
Plug 'nvim-lualine/lualine.nvim' " Status Bar
Plug 'kyazdani42/nvim-web-devicons' " Status Bar Icons
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'kvrohit/mellow.nvim' " Color Scheme
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'romgrk/barbar.nvim' " Tabs
Plug 'folke/which-key.nvim' " Key Suggestions
Plug 'wakatime/vim-wakatime' " Time Logging
Plug 'nvim-tree/nvim-tree.lua' " File Explorer
Plug 'nvim-lua/plenary.nvim' " File Search
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " File Search
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto completion
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown Preview
Plug 'rcarriga/nvim-notify'
Plug 'xiyaowong/nvim-transparent'
call plug#end()

" Lua Block
"
lua << END

-- Lualine Theme

require('lualine').setup {
	options = {
			component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
			disabled_filetypes = { "NvimTree", "alpha", "dashboard", "Outline" }
		},
	sections = {
		lualine_b = {
			{
				'diagnostics',
				sources = { 'nvim_diagnostic' },
				sections = { 'error', 'warn' },
				symbols = {error = " ", warn = " ", info = " ", hint = " " },
				always_visible = true
			}
		},
		lualine_x = {"location", "filetype"}
		}
	}

require('transparent').setup({
	enable = true
	})
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
:colorscheme mellow

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
