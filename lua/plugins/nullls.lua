local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

return {
	"jose-elias-alvarez/null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "mason.nvim" },
	opts = function()
		local null_ls = require("null-ls")
		return {
			sources = {
				--would use this if we weren't using the built-in LSP.
				null_ls.builtins.formatting.stylua,
				--null_ls.builtins.diagnostics.eslint,
				--null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettierd,
			},
			-- you can reuse a shared lspconfig on_attach callback here
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		}
	end,
}
