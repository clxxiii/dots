vim.g.mapleader = " "

require("config.lazy")

-- VIM SETTINGS
vim.cmd([[
	set autoindent
	set number
	set relativenumber
	set tabstop=2
	set shiftwidth=2
	set expandtab
	set mouse=a
  set clipboard+=unnamedplus
  set pumheight=10
  set noshowmode
	set splitbelow
	set splitright
]])

vim.cmd([[
  nnoremap <m-j> <CMD>m .+1<CR>
  nnoremap <m-k> <CMD>m .-2<CR>
  vnoremap <m-j> :m '>+1<CR>gv=gv
  vnoremap <m-k> :m '<-2<CR>gv=gv
]])


-- NEOVIDE SETTINGS
if vim.g.neovide then
  require("config.neovide")
end
