return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"javascript",
				"typescript",
				"html",
				"css",
				"svelte",
			},
		})
	end,
}
