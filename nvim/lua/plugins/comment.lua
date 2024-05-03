return {
	"terrortylor/nvim-comment",
	-- comment toggle
	event = "VeryLazy",
	config = function() require("nvim_comment").setup() end
}
