local M = {}

function M.setup()
    -- Basic keymaps
    vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
    vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

    -- Window navigation
    vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
    vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
    vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
    vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
    -- vim.keymap.set("n", "<leader>f", function()
    --   require("conform").format({ async = true, lsp_fallback = true })
    -- end)
    vim.keymap.set("n", "J", "mzJ`z")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set("n", "n", "nzzzv")
    vim.keymap.set("n", "N", "Nzzzv")
    vim.keymap.set("n", "=ap", "ma=ap'a")
    vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

    -- Productivity
    vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "[W]rite/Save" })
    vim.keymap.set("n", "<leader>s", ":source %<CR>", { desc = "[S]ource current file" })

    -- compiler C
    vim.keymap.set("n", "<leader>c", ":w<CR>:!gcc -Wall -Wextra % -o %<<CR>", { desc = "[C]ompile C program" })
    vim.keymap.set("n", "<leader>r", "<cmd>!./%<<CR>", { desc = "[R]un compiled program" })
end

return M
