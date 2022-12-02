lua << END
require('vgit').setup({
settings = {
    live_blame = {
      enabled = false
    }
  }
})

vim.o.updatetime = 300
vim.o.incsearch = false
vim.wo.signcolumn = 'yes'
END




