local config = function()
	local noresi = {noremap = true,  silent = true}
	vim.api.nvim_set_keymap('n', '<leader>g', ':LazyGit<cr>', noresi)
	vim.api.nvim_set_keymap('n', '<leader>G', ':LazyGitCurrentFile<cr>', noresi)
end

return config
