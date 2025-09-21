return {
  { 
    "mason-org/mason-lspconfig.nvim", 
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig"
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
        },
      })
    end,
  },
  { 
    "saghen/blink.cmp", 
    version = "1.*",
    opts = { 
      keymap = { preset = 'super-tab' },

      completion = {},

      sources = {
        default = { 'lsp', 'path', 'buffer' }
      },
    },
    opts_extend = { "sources.default" }
  }
}
