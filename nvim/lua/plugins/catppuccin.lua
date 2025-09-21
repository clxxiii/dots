return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = {
        transparent = true
      },
      auto_integrations = true,
      term_colors = true,
      flavour = "macchiato",
    })
		vim.cmd([[colorscheme catppuccin]])
	end,
}
