return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			float_opts = {
				border = "curved",
			},
		})

		vim.cmd([[
      nnoremap <C-\> <CMD>ToggleTerm<CR>
      tnoremap <C-\> <C-\><C-n><CMD>ToggleTerm<CR>

      tnoremap <C-n> <C-\><C-n>
      tnoremap <C-w>h <C-\><C-n><C-w>h
      tnoremap <C-w>j <C-\><C-n><C-w>j
      tnoremap <C-w>k <C-\><C-n><C-w>k
      tnoremap <C-w>l <C-\><C-n><C-w>l
    ]])
	end,
}
