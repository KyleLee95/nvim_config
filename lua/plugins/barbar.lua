return {
	"romgrk/barbar.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local barbar = require("barbar")
		barbar.setup({
			icons = {
				button = "×",
				visible = { modified = { buffer_number = false } },
				inactive = { button = "×" },
			},
		})
	end,
}
