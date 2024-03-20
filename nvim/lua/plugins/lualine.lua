return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	opts = {
		options = {
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = { "NvimTree", "alpha", "dashboard", "Outline" },
		},
		sections = {
			lualine_b = {
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					sections = { "error", "warn" },
					symbols = { error = " ", warn = " ", info = " ", hint = " " },
					always_visible = true,
				},
			},
			lualine_x = { "location", "filetype" },
		},
	},
}
