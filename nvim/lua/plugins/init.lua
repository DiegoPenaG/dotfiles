local M = {}

function M.setup()
    require("lazy").setup({
        -- UI & THEMES
        require("plugins.ui"),

        -- TOOLS & UTILITIES
        require("plugins.tools"),

        -- LSP & COMPLETION
        require("plugins.lsp"),

        -- MISCELANEOUS
        require("plugins.misc"),

        require("plugins.conform"),

        require("plugins.none-ls"),
        -- SNIPS
        require("plugins.completion"),

        require("plugins.treesitter"),

        require("plugins.telescope"),
        -- LAZY.nvim UI CONFIG (mantener al final)
        ui = {
            icons = vim.g.have_nerd_font and {} or {
                cmd = "⌘",
                config = "🛠",
                event = "📅",
                ft = "📂",
                init = "⚙",
                keys = "🗝",
                plugin = "🔌",
                runtime = "💻",
                require = "🌙",
                source = "📄",
                start = "🚀",
                task = "📌",
                lazy = "💤 ",
            },
        },
    })
end

return M
