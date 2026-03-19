return {
	"Everblush/nvim",
	name = "everblush",
  enabled = false,
	lazy = false,
	priority = 1000,
	config = function()
    require("everblush").setup({
      transparent_background = true,
    })
		vim.cmd([[colorscheme everblush]])
	end,
}
