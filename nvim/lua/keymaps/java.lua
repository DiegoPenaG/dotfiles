local M = {}

function M.setup()
	-- Java keymaps with space leader
	local java_keymaps = {
		-- Java compilation and execution
		{ "n", "<leader>jc", ":!javac % && java %:r<CR>", { desc = "[J]ava [C]ompile and Run" } },
		{ "n", "<leader>jr", ":!mvn spring-boot:run<CR>", { desc = "[J]ava [R]un Spring Boot" } },
		{ "n", "<leader>jt", ":!mvn test<CR>", { desc = "[J]ava [T]est" } },
		{ "n", "<leader>jb", ":!mvn clean compile<CR>", { desc = "[J]ava [B]uild" } },

		-- Buffer navigation
		{ "n", "<leader>bn", ":bnext<CR>", { desc = "[B]uffer [N]ext" } },
		{ "n", "<leader>bp", ":bprevious<CR>", { desc = "[B]uffer [P]revious" } },
	}

	for _, keymap in ipairs(java_keymaps) do
		vim.keymap.set(keymap[1], keymap[2], keymap[3], keymap[4] or {})
	end
end

return M
