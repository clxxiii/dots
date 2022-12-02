lua << END
require("toggleterm").setup({
    float_opts = {
        border = 'curved'
    }
})

local Terminal = require("toggleterm.terminal").Terminal
local nap = Terminal:new({
    cmd = 'nap',
    direction = 'float',
    close_on_exit = true
})

function _nap_toggle()
    nap:toggle()
end

END
