local config = function()
	vim.o.showmode = false -- do not show the mode in the output line

	require("lualine").setup {
		options = {
			icons_enabled = true,
			theme = "auto",
			component_separators = { left = "·", right = "·"},
			section_separators = { left = "", right = ""},
			disabled_filetypes = {},
			always_divide_middle = true,
			globalstatus = false,
		},
		sections = {
			lualine_a = {"mode"},
			lualine_b = {"branch", "diff", "diagnostics"},
			lualine_c = {"filename"},
			lualine_x = {"encoding", "fileformat", "filetype"},
			lualine_y = {"progress"},
			lualine_z = {"location"}
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {"filename", "location", "filetype"},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		extensions = {}
	}
end

return {
	"nvim-lualine/lualine.nvim",
	-- custom statusline at the bottom of every window
	dependencies = { "kyazdani42/nvim-web-devicons", optional = true },
	config = config
}
