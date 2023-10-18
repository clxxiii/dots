return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		if vim.g.neovide then
			require("catppuccin").setup({
				transparent_background = false,
				term_colors = true,
				flavour = "mocha",
			})
		else
			require("catppuccin").setup({
				transparent_background = true,
				term_colors = true,
				flavour = "mocha",
			})
		end
		vim.cmd([[colorscheme catppuccin]])
	end,
}
