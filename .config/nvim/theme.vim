" Everything contributing to the look of my editor

" Prefered default colorscheme
:colorscheme catppuccin

lua << END
require('catppuccin').setup({
  flavour = 'mocha',
  term_colors = true,
  transparent_background = true
})
END
