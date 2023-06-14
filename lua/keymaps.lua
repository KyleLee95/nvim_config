--need to map leader at top so that other plugins don't interfere

vim.g.mapleader = ","

vim.g.maplocalleader = "."
local function map(mode, lhs, rhs)
	local options = { noremap = false, silent = true, nowait = true }
	vim.keymap.set(mode, lhs, rhs, options)
end

--map({'i','n','v'}, '<Left>', '<nop>')
--map({'i','n','v'}, '<Right>', '<nop>')
--map({'i','n','v'}, '<Up>', '<nop>')
--map({'i','n','v'}, '<Down>', '<nop>')
map({ "i", "n", "v" }, "<C-b>", ":Neotree toggle <Enter>")
map({ "i", "n", "v" }, "<M-tab>", "<Cmd>BufferNext<CR>")
map({ "i", "n", "v" }, "<M-S-tab>", "<Cmd>BufferPrevious<CR>")
map({ "i", "n", "v" }, "<M-w>", "<Cmd>BufferClose<CR>")
map({ "i", "n", "v" }, "<M-S-t>", "<Cmd>BufferRestore<CR>")
map({ "i", "n", "v" }, "<F12>", ":UndotreeToggle <Enter>")

--Remap copy paste to work with system clipboard

map({ "i", "n", "v" }, "<leader>Y", "+yg")
map({ "i", "n", "v" }, "<leader>y", "+y")
map({ "i", "n", "v" }, "<leader>yy", "yy")
-- map({ "i", "n", "v" }, "<leader>p", "+p")
-- map({ "i", "n", "v" }, "<leader>p", "+P")

--folke/trouble keymaps
-- Lua
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- vimtex compile
map({ "i", "n", "v" }, "<leader>vc", ":VimtexCompile <Enter>")

--DAP keybinds

--map({ "i", "n", "v" }, "<F1>", ":lua require'dap'.continue()<CR>")
--map({ "i", "n", "v" }, "<F2>", ":lua require'dap'.step_over()<CR>")
--map({ "i", "n", "v" }, "<F3>", ":lua require'dap'.step_into()<CR>")
--map({ "i", "n", "v" }, "<F4>", ":lua require'dap'.step_out()<CR>")
--map({ "i", "n", "v" }, "<F5>", ':lua require"osv".launch({port = 8086})<CR>]]')
--map({ "i", "n", "v" }, "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
--map({ "i", "n", "v" }, "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
--map(
--	{ "i", "n", "v" },
--	"<leader>lp",
--	":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>"
--)

--map({ "i", "n", "v" }, "<leader>dr", ":lua require'dap'.repl.open()<CR>")
