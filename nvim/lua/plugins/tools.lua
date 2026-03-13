return {
	-- FUZZY FINDER
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			-- ... configuración de telescope ...
		end,
	},

	-- GIT
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				-- ... más config ...
			},
		},
	},

	-- FORMATTING
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		opts = {
			-- ... configuración de conform ...
		},
	},

	-- INDENT DETECTION
	"NMAC427/guess-indent.nvim",
}
