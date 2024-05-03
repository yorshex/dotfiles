local config = function()
	vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
	vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
end

return {
	"toppair/peek.nvim",
	-- markdown preview
	build = "deno task --quiet build:fast",
	lazy = true,
	ft = "markdown",
	config = config
}
