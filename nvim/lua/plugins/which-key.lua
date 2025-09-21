return {
	"folke/which-key.nvim",
  event = "VeryLazy",
	opts = {
		win = {
			border = "rounded",
			padding = { 1, 1, 1, 1 },
		},
	},
  keys = {
    {
      "<leader>?",
      function ()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
