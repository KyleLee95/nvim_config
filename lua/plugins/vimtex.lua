return {
	"lervag/vimtex",
	config = function()
		local autocmd = vim.api.nvim_create_autocmd
		vim.api.nvim_create_augroup("CustomTex", {})
		autocmd("User", {
			group = "CustomTex",
			pattern = "VimtexEventCompileSuccess",
			callback = function()
				vim.g.tex_compiles_successfully = true

				-- a hacky way to reload the pdf in the terminal
				-- when it has changed
				if vim.g.term_pdf_vierer_open and vim.g.tex_compiles_successfully then
					local command = "termpdf.py " .. vim.api.nvim_call_function("expand", { "%:r" }) .. ".pdf" .. "'\r'"
					local kitty = "kitty @ send-text --match title:termpdf "
					vim.fn.system(kitty .. command)
				end
			end,
		})
	end,
}
