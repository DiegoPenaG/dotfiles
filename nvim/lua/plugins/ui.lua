return {
    -- THEMES & APPEARANCE
    --
    --	{
    --		"ellisonleao/gruvbox.nvim",
    --		priority = 1000,
    --		config = function()
    --			require("gruvbox").setup({
    --				-- ... tu configuración de gruvbox ...
    --			transparent_mode = true,
    --			})
    --			vim.cmd([[ colorscheme gruvbox]])
    --		end,
    --	},
    --
    {
        "vague-theme/vague.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
                -- optional configuration here
                transparent = true,
            })
            vim.cmd("colorscheme vague")
        end,
    },

    -- STATUSLINE & UI COMPONENTS
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.ai").setup({ n_lines = 500 })
            require("mini.surround").setup()
            local statusline = require("mini.statusline")
            statusline.setup({ use_icons = vim.g.have_nerd_font })
            statusline.section_location = function()
                return "%2l:%-2v"
            end
        end,
    },

    -- FILE EXPLORER
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({})
        end,
        keys = {
            { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle [E]xplorer" },
        },
    },
}
