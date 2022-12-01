" The Splash screen when just running 'nvim'

lua << END
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡶⠖⠒⠒⠲⢦⣄⠀⠀⣠⣤⣴⠶⠶⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠟⠀⠀⠀⠀⠀⠀⠀⢨⠿⠋⠁⠀⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣿⠶⠶⠶⢶⣶⣤⣠⣴⡿⠶⠶⠶⠶⣦⣄⡀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣥⣤⣤⣄⡀⠀⠀⠀⣻⣥⣶⣶⣦⣤⣤⣤⠉⠛⠂⠀⠀⠀⢹⡄⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⣀⣼⣟⣛⣛⣛⣿⣿⣦⠀⣸⣿⣟⣛⣛⣛⣛⣻⠿⣿⣶⠀⠀⠀⠀⠈⡟⢷⣆⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⢠⠉⢹⣿⡿⠉⠉⠉⠉⢹⣾⡏⢹⣿⣿⣿⠏⠉⠉⠉⠒⢿⠀⠀⠀⠀⠀⠁⠀⠙⣦⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⢈⡦⣤⣄⣀⣀⣀⡤⠴⠞⠈⠷⣄⣈⠛⠉⠀⠀⠀⢀⣀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⣾⠁⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⣛⣛⣫⣭⣍⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡆⠀',
-- '⠀⠀⠀⠀⠀⢀⣿⠠⣿⣿⣿⣿⣻⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣷⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀',
-- '⠀⠀⣀⡶⠏⠉⢹⣷⡙⠷⢿⣿⣽⣿⣿⣿⣿⣿⣻⣟⣯⣽⣿⡿⠿⠟⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀',
-- '⢀⣶⠋⠀⠀⢀⣶⢻⡇⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀',
-- '⣼⡀⠀⠀⠀⣸⢅⣘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣤⣸⠇⠀',
-- '⢿⡇⢰⡄⢠⣿⣀⠉⠻⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡄⠉⠿⡄⠀',
-- '⠘⣿⣼⣷⣾⠏⠻⣷⡄⠀⠹⣧⠀⠀⠀⠀⠀⠀⣰⡿⣿⣬⣄⠀⢤⣄⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⢻⡆',
-- '⠀⠻⣏⠋⠀⠀⠀⠈⢿⡆⠀⠹⣿⠀⠀⠀⠀⠀⣿⡇⠀⠉⠙⣷⡄⠈⠿⣦⠀⠀⠀⠀⠀⢀⣼⡇⠀⠀⠈⣷',
-- '⠀⠀⠻⣆⠀⠀⠀⠀⠘⣿⡆⠀⣿⡇⠀⠀⠀⠀⣿⡇⠀⠀⠀⠘⢿⣆⠀⠙⣧⡀⠀⣤⣴⢻⣿⠁⠠⠀⠀⣿',
-- '⠀⠀⠀⠙⢧⣄⠀⠀⠀⣿⡇⣠⠟⠻⠷⢦⣤⣬⣼⣧⠀⠀⠀⠀⠘⣿⡀⠀⢻⡿⠞⠛⠀⠘⢿⣤⠿⣀⡿⠇',
-- '⠀⠀⠀⠀⠀⠙⠷⠶⢦⡿⠷⠋⠀⠀⠀⠀⠀⠉⠉⢹⣇⠀⠀⠀⠀⢸⣷⠀⢸⡇⠀⠀⠀⠀⠈⠙⠛⠛⠁⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⡀⠀⠀⢸⣿⡀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⠶⠾⠿⠛⠁⠀⠀⠀       ,
[[       \`-._           __              ]],
[[        \\  `-..____,.'  `.            ]],
[[         :`.         /    \`.          ]],
[[         :  )       :      : \         ]],
[[          ;'        '   ;  |  :        ]],
[[          )..      .. .:.`.;  :        ]],
[[         /::...  .:::...   ` ;         ]],
[[         ; _ '    __        /:\        ]],
[[         `:o>   /\o_>      ;:. `.      ]],
[[        `-`.__ ;   __..--- /:.   \     ]],
[[        === \_/   ;=====_.':.     ;    ]],
[[         ,/'`--'...`--....        ;    ]],
[[              ;  ┏┓╻┏━╸┏━┓╻ ╻╻┏┳┓  ;   ]],
[[            .'   ┃┗┫┣╸ ┃ ┃┃┏┛┃┃┃┃   ;  ]],
[[          .'     ╹ ╹┗━╸┗━┛┗┛ ╹╹ ╹   ;  ]],
[[        .'     ..     ,      .       ; ]],
[[       :       ::..  /      ;::.     | ]],
[[      /      `.;::.  |       ;:..    ; ]],
[[     :         |:.   :       ;:.    ;  ]],
[[     :         ::     ;:..   |.    ;   ]],
[[      :       :;      :::....|     |   ]],
[[      /\     ,/ \      ;:::::;     ;   ]],
[[    .:. \:..|    :     ; '.--|     ;   ]],
[[   ::.  :''  `-.,,;     ;'   ;     ;   ]],
[[.-'. _.'\      / `;      \,__:      \  ]],
[[`---'    `----'   ;      /    \,.,,,/  ]],
[[                   `----`⠀⠀⠀⠀⠀⠀⠀⠀      ]],
}

dashboard.section.buttons.val = {
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
--	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
--	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Open file", ":Telescope oldfiles <CR>"),
--	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
END
