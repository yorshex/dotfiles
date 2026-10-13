return {
	"ap/vim-css-color",
	cond = (vim.env.TERM == 'xterm-256color' or vim.env.TERM == 'st-256color'),
}
