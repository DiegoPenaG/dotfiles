return{
-- TREESITTER (syntax highlighting)
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "bash", "c", "html", "lua", "vim", "java","python", "css", "typescript", "go" }, -- ¡añadí java!
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
