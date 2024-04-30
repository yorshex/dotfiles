-- bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)



require("lazy").setup
{
	-- Environment

	{ "mg979/vim-visual-multi",
		-- multiple cursors
		event = "VeryLazy",
	},

	{ "terrortylor/nvim-comment",
		-- comment toggle
		event = "VeryLazy",
		config = function() require("nvim_comment").setup() end
	},

	{ "nvim-neo-tree/neo-tree.nvim",
		-- a file manager within the editor
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"muniftanjim/nui.nvim",
		},
		config = require("plugin_configs.neo-tree")
	},

	{ "toppair/peek.nvim",
		-- markdown preview
		build = "deno task --quiet build:fast",
		lazy = true,
		ft = "markdown",
		config = require("plugin_configs.peek")
	},

	{ "kdheepak/lazygit.nvim",
		-- gitlazy git client integration
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
		config = require("plugin_configs.lazygit")
	},

	{
		"williamboman/mason.nvim",
		-- lsp
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = require("plugin_configs.mason")
	},

	{ "hrsh7th/nvim-cmp",
		-- completion
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp",
			"petertriho/cmp-git",

			"neovim/nvim-lspconfig",
		},
		event = "VeryLazy",
		config = require("plugin_configs.nvim-cmp")
	},


	-- Appearance

	{ "nvim-lualine/lualine.nvim",
		-- custom statusline at the bottom of every window
		dependencies = { "kyazdani42/nvim-web-devicons", optional = true },
		config = require("plugin_configs.lualine")
	},

	{ "nvim-treesitter/nvim-treesitter",
		-- syntax highlighting
		build = function() require("nvim-treesitter.install").update { with_sync=true } end,
		config = require("plugin_configs.nvim-treesitter")
	},

	{ "navarasu/onedark.nvim",
		-- highly customizable color theme
		config = require("plugin_configs.onedark")
	},
}
