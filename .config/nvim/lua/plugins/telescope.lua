return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ahmedkhalf/project.nvim",
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fb", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent" },
		{ "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Search in File" },
		{ "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Open Project" },
	},
	config = function()
		require("project_nvim").setup()
		require("telescope").load_extension("projects")
	end,
}
