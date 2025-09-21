return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			float_opts = {
				border = "curved",
			},
		})

	end,
	keys = {
		{ "<C-\\>", "<Cmd>ToggleTerm<CR>", desc = "Toggle Terminal", mode = { "n" } },
    { "<C-\\>", "<C-\\> <C-\\><C-n><CMD>ToggleTerm<CR>",  desc = "Toggle Terminal", mode = { "t" } },
    { "<C-n>", "<C-\\> <C-n>",  desc = "Normal Mode", mode = { "t" } },
    { "<C-w>h", "<C-\\><C-n><C-w>h",  desc = "Focus Left", mode = { "t" } },
    { "<C-w>l", "<C-\\><C-n><C-w>l",  desc = "Focus Right", mode = { "t" } },
    { "<C-w>k", "<C-\\><C-n><C-w>k",  desc = "Focus Up", mode = { "t" } },
    { "<C-w>l", "<C-\\><C-n><C-w>l",  desc = "Focus Down", mode = { "t" } }
  }
}
