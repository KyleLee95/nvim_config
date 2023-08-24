return {
	"CRAG666/betterTerm.nvim",
	config = function()
		local betterTerm = require("betterTerm")
		require("betterTerm").setup({
			prefix = "Term_",
			startInserted = true,
			position = "bot",
			size = 18,
		})
		-- toggle firts term
		vim.keymap.set({ "n", "t" }, "<C-t>", betterTerm.open, { desc = "Open terminal" })
		-- Select term focus
		vim.keymap.set({ "n", "t" }, "<leader>tc", betterTerm.select, { desc = "Select terminal" })
		-- Create new term
		local current = 2
		vim.keymap.set({ "n", "t" }, "<leader>tn", function()
			betterTerm.open(current)
			current = current + 1
		end, { desc = "New terminal" })
	end,
}
