local config = function ()
	local map = vim.api.nvim_set_keymap
	local noresi = {noremap = true,  silent = true}
	map("n", "<leader>m", ":Make<Enter>", noresi)
end
return {
	"tpope/vim-dispatch",
	config = config
}
