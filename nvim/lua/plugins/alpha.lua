return {
	"goolord/alpha-nvim",
	config = function()
		local status_ok, alpha = pcall(require, "alpha")

		if not status_ok then
			return
		end

		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
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
			dashboard.button("n", " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("o", " Open file", ":Telescope oldfiles<CR>"),
			dashboard.button("s", " Settings", ":e ~/.config/nvim<CR>"),
			dashboard.button("q", " Quit", ":qa<CR>"),
		}

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true

		alpha.setup(dashboard.opts)
	end,
}
