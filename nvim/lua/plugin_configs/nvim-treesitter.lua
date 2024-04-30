function config()
	require "nvim-treesitter.install".prefer_git = false
	require "nvim-treesitter.install".compilers = {"clang"}
	require "nvim-treesitter.configs".setup {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
		sync_install = false,
		auto_install = true,
		ignore_install = { "lilypond", "markdown", "i3config" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	}

	local parser_configs = require "nvim-treesitter.parsers".get_parser_configs()
end

return config
