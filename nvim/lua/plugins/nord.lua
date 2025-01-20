local config = function()
	vim.cmd "colorscheme nord"
	vim.cmd "highlight NonText guifg=#353b49"
end

return {
	"arcticicestudio/nord-vim",
	config = config
}
