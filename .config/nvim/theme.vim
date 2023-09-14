" Everything contributing to the look of my editor

lua << END
  if vim.g.neovide then
    require('catppuccin').setup({
      flavour = 'mocha',
      term_colors = true,
      transparent_background = false
    })
  else
    require('catppuccin').setup({
      flavour = 'mocha',
      term_colors = true,
      transparent_background = true
    })
  end
END

" Prefered default colorscheme
:colorscheme catppuccin
