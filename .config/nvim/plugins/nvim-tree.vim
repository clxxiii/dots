
lua << END
-- disable default file handler
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- start nvimtree
require('nvim-tree').setup({
    filters = {
        dotfiles = true
    }
})
END

nnoremap <A-t> <cmd>NvimTreeToggle<CR>
