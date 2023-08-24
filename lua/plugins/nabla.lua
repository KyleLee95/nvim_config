return {
	"jbyuki/nabla.nvim",
	keys = {
		{
			"<leader>vp",
			function()
				require("nabla").popup()
			end,
			desc = "Notation",
		},
	},
	config = function()
		require("nabla").enable_virt({
			autogen = true, -- auto-regenerate ASCII art when exiting insert mode
			silent = true, -- silents error messages
		})
	end,
}
