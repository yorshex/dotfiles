function config()
	local map = vim.api.nvim_set_keymap
	local noresi = {noremap = true, silent = true}

	require("neo-tree").setup {
		sort_case_insensitive = true,
		default_component_configs = {
			name = {
				use_git_status_colors = false,
			},
			indent = {
				with_markers = true,
				with_expanders = true,
			},
			icon = {
				default = " ",
			},
		},
		filesystem = {
			bind_to_cwd = true,
			cwd_target = {
				sidebar = "global",
				current = "global"
			},
			filtered_items = {
				hide_dotfiles = true,
				hide_gitignored = false,
				hide_hidden = true,
			},
			hijack_netrw_behavior = "open_current"
		}
	}

	map("n", "<leader>f", ":Neotree action=focus position=current<CR>", noresi)
	map("n", "<leader>F", ":Neotree reveal action=focus position=current<CR>", noresi)
end

return config
