return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "mason-org/mason-lspconfig.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",
            { "j-hui/fidget.nvim",    opts = {} },

            -- Autocomplete
            "saghen/blink.cmp",

            -- Formatter
            {
                "stevearc/conform.nvim",
                opts = {
                    format_on_save = {
                        timeout_ms = 500,
                        lsp_fallback = true,
                    },
                    formatters_by_ft = {
                        lua = { "stylua" },
                        go = { "goimports", "gofmt" },
                        c = { "clang-format" },
                        cpp = { "clang-format" },
                        javascript = { "prettier" },
                        typescript = { "prettier" },
                        html = { "prettier" },
                        css = { "prettier" },
                        json = { "prettier" },
                    },
                },
            },
        },

        config = function()
            -- Setup mason tool installer
            require("mason-tool-installer").setup({
                ensure_installed = {
                    -- Lua
                    "lua-language-server",
                    "stylua",

                    -- Go
                    "gopls",
                    "goimports",

                    -- C/C++
                    "clangd",
                    "clang-format",

                    -- Web
                    "prettier",
                },
            })

            -- LSP CONFIGS

            vim.keymap.set("n", "<leader>f", function()
                vim.lsp.buf.format({ async = true })
            end, { desc = "Format file" })

            -- Lua
            vim.lsp.config["lua_ls"] = {
                cmd = { "lua-language-server" },
                filetypes = { "lua" },
                root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },
                    },
                },
            }
            vim.lsp.enable("lua_ls")

            -- Go
            vim.lsp.config["gopls"] = {
                cmd = { "gopls" },
                filetypes = { "go", "gomod", "gowork" },
                root_markers = { "go.work", "go.mod", ".git" },
            }
            vim.lsp.enable("gopls")

            -- C / C++
            vim.lsp.config["clangd"] = {
                cmd = { "clangd" },
                filetypes = { "c", "cpp" },
                root_markers = { ".git", "compile_commands.json" },
            }
            vim.lsp.enable("clangd")

            -- Optional: format on save using LSP fallback
            vim.api.nvim_create_autocmd("BufWritePre", {
                callback = function(args)
                    vim.lsp.buf.format({ bufnr = args.buf })
                end,
            })

            -- Clean up formatting autocmd when LSP detaches
            vim.api.nvim_create_autocmd("LspDetach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if client and client:supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({
                            event = "BufWritePre",
                            buffer = args.buf,
                        })
                    end
                end,
            })
        end,
    },
}
