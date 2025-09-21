return {
  { 
    "mason-org/mason-lspconfig.nvim", 
    event = "VeryLazy",
    dependencies = {
      "mason-org/mason.nvim",
      "nvim-mini/mini.icons",
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
    event = "VeryLazy",
    version = "1.*",
    opts = { 
      keymap = { preset = 'super-tab' },

      completion = {
        menu = { border = 'rounded' },
      },

      signature = {
        enabled = true,
        window = { 
          border = 'rounded'
        },
      },


      sources = {
        default = { 'lsp', 'path', 'buffer' }
      },
    },
    opts_extend = { "sources.default" }
  }
}
