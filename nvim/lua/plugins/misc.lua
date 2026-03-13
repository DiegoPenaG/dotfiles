return {
	-- PRODUCTIVITY & FUN
	{
		"folke/which-key.nvim",
		event = "VimEnter",
		opts = {
			-- ... configuración which-key ...
		},
	},

	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{
		"ThePrimeagen/vim-be-good",
		cmd = "VimBeGood",
	},

	-- UTILITIES
	"tpope/vim-sensible",
}
