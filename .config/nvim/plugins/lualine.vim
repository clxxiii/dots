" This is the bar that shows at the bottom of the active window

lua << END

require('lualine').setup {
	options = {
			component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
			disabled_filetypes = { "NvimTree", "alpha", "dashboard", "Outline" }
		},
	sections = {
		lualine_b = {
			{
				'diagnostics',
				sources = { 'nvim_diagnostic' },
				sections = { 'error', 'warn' },
				symbols = {error = " ", warn = " ", info = " ", hint = " " },
				always_visible = true
			}
		},
		lualine_x = {"location", "filetype"}
		}
	}
END