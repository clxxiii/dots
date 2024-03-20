return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	opts = {
		filters = {
			dotfiles = true,
		},
	},
	keys = {
		{ "<A-t>", "<cmd>NvimTreeToggle><CR>", desc = "Toggle Folder" },
	},
}
