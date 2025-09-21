return {
	"romgrk/barbar.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  init = function () vim.g.barbar_auto_setup = false end,
	opts = {
		no_name_title = "New Tab",
	},
	keys = {
		{ "<A-,>", "<Cmd>BufferPrevious<CR>" },
		{ "<A-.>", "<Cmd>BufferNext<CR>" },

		{ "<A-<>", "<Cmd>BufferMovePrevious<CR>" },
		{ "<A->>", "<Cmd>BufferMoveNext<CR>" },

		{ "<A-1>", "<Cmd>BufferGoto 1<CR>" },
		{ "<A-2>", "<Cmd>BufferGoto 2<CR>" },
		{ "<A-3>", "<Cmd>BufferGoto 3<CR>" },
		{ "<A-4>", "<Cmd>BufferGoto 4<CR>" },
		{ "<A-5>", "<Cmd>BufferGoto 5<CR>" },
		{ "<A-6>", "<Cmd>BufferGoto 6<CR>" },
		{ "<A-7>", "<Cmd>BufferGoto 7<CR>" },
		{ "<A-8>", "<Cmd>BufferGoto 8<CR>" },
		{ "<A-9>", "<Cmd>BufferGoto 9<CR>" },

		{ "<A-c>", "<Cmd>BufferClose<CR>" },
		{ "<A-u>", "<Cmd>BufferRestore<CR>" },
	},
}
