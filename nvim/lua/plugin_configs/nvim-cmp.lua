local config = function()
	local cmp = require('cmp')

	cmp.setup {
		snippet = {
			expand = function(args)
				-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			end,
		},

		experimental = {
			ghost_text = true,
		},

		mapping = cmp.mapping.preset.insert {
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<CR>'] = cmp.mapping.confirm({ select = true }),
		},

		sources = cmp.config.sources(
			{
				{ name = 'nvim_lsp' },
				{ name = 'nvim_lua' },
				{ name = 'path' },
				{ name = 'buffer', keyword_length = 5 },

				-- { name = 'snippy' }, -- For snippy users.
			},
			{
				{ name = 'buffer' },
			})
	}

	-- Set configuration for specific filetype.
	cmp.setup.filetype('gitcommit',
	{
		sources = cmp.config.sources(
		{
			{ name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
		},
		{
			{ name = 'buffer' },
		})
	})

	-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ '/', '?' },
	{
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		}
	})

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(':',
	{
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources(
		{
			{ name = 'path' }
		},
		{
			{ name = 'cmdline' }
		}),
		matching = { disallow_symbol_nonprefix_matching = false }
	})
	
	-- Set up lspconfig.
	-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
	-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
	-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
	-- 	capabilities = capabilities
	-- }
end

return config
