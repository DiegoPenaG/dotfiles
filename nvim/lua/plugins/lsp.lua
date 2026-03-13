return {
	-- LSP & COMPLETION
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"mason-org/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			{ "j-hui/fidget.nvim", opts = {} },
			"saghen/blink.cmp",
		},
		config = function()
			-- ... toda tu configuración LSP ...
		end,
	},

	-- AUTOCOMPLETION
	{
		"saghen/blink.cmp",
		event = "VimEnter",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"folke/lazydev.nvim",
		},
		opts = {
			-- ... configuración de blink.cmp ...
		},
	},

	-- TREESITTER (syntax highlighting)
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "bash", "c", "html", "lua", "vim", "java" }, -- ¡añadí java!
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
