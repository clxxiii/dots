return {
	"folke/which-key.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		win = {
			border = "rounded",
			margin = { 1, 1, 1, 1 },
		},
	},
}
