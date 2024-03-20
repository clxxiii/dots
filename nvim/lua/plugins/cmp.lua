vim.cmd([[set completeopt=menu,menuone,noselect]])

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		{
			"williamboman/mason.nvim",
			opts = {
				ensure_installed = {
					"stylua",
					"shellcheck",
					"shfmt",
					"flake8",
				},
			},
		},
		"L3MON4D3/LuaSnip",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
	},
	config = function()

		require("mason").setup()

		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			}),
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, vim_item)
					vim_item.kind = string.format("%s", require("config.kinds")[vim_item.kind])
					vim_item.menu = ({
						nvim_lsp = "",
						luasnip = "",
						buffer = "",
						path = "",
					})[entry.source.name]
					return vim_item
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
			}),
		})

		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "cmp_git" },
			}, {
				{ name = "buffer" },
			}),
		})

		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspservers = {
			"asm_lsp",
			"eslint",
			"cssls",
			"jsonls",
			"tsserver",
			"hls",
			"rust_analyzer",
			"clangd",
			"texlab",
			"lua_ls",
			"svelte",
			"emmet_ls",
			"vimls",
			"prismals",
			"jdtls",
			"tailwindcss",
      "bashls",
		}

		for i = 1, #lspservers do
			local server = lspservers[i]

			require("lspconfig")[server].setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					if client.server_capabilities.documentSymbolProvider then
						require("nvim-navic").attach(client, bufnr)
					end
				end,
			})
		end
	end,
}
