--trigger nabla on .wiki files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.wiki" },
	command = "echo 'Entering a wiki file'",
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.wiki" },
	callback = function()
		print("here")
		require("nabla").enable_virt({
			autogen = true, -- auto-regenerate ASCII art when exiting insert mode
			silent = true, -- silents error messages
		})
	end,
})
