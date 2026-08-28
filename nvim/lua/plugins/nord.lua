local config = function()
	vim.cmd "colorscheme nord"
	vim.cmd "highlight NonText guifg=#353b49"

	vim.cmd [[
	hi link uxnComment Comment
	hi link uxnOutermostComment Comment
	hi link uxnLabel Function
	hi link uxnNumber Number
	hi link uxnLiteralAddress Bold
	hi link uxnRawAddress Label
	hi link uxnPadding Label
	hi link uxnJump Underlined
	hi link uxnString String
	]]
end

return {
	"arcticicestudio/nord-vim",
	cond = (vim.env.TERM == 'xterm-256color' or vim.env.TERM == 'st-256color'),
	config = config
}
