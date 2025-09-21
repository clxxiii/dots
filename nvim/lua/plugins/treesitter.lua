return {
	"nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
	config = function()
		require("nvim-treesitter.configs").setup({
      sync_install = false,
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
      highlight = true,
		})
	end,
}
