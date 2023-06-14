--GITHUB
-- return {
-- 	"projekt0n/github-nvim-theme",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require("github-theme").setup({
-- 			-- ...
-- 		})
--
-- 		vim.cmd("colorscheme github_dark_high_contrast")
-- 	end,
-- }
--BAMBOO
-- return {
-- 	"ribru17/bamboo.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("bamboo").setup({
-- 			-- optional configuration here
-- 		})
-- 		require("bamboo").load()
-- 	end,
-- }

--PMNDRS
-- return {
-- 	"olivercederborg/poimandres.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("poimandres").setup({
-- 			-- leave this setup function empty for default config
-- 			-- or refer to the configuration section
-- 			-- for configuration options
--
-- 			vim.cmd("colorscheme poimandres"),
-- 		})
-- 	end,
-- }
-- VSCODE
return {
	"Mofiqul/vscode.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme vscode]])
		local c = require("vscode.colors").get_colors()
		require("vscode").setup({
			-- Alternatively set style in setup
			-- style = 'light'

			-- Enable transparent background
			transparent = true,

			-- Enable italic comment
			italic_comments = true,

			-- Disable nvim-tree background color
			disable_nvimtree_bg = true,

			-- Override colors (see ./lua/vscode/colors.lua)
			color_overrides = {
				vscLineNumber = "#FFFFFF",
			},

			-- Override highlight groups (see ./lua/vscode/theme.lua)
			group_overrides = {
				--this supports the same val table as vim.api.nvim_set_hl
				-- use colors from this colorscheme by requiring vscode.colors!
				Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
			},
	})
	end,
}
