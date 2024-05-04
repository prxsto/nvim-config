return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function()
		return {
			options = {
				theme = "catppuccin",
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "alpha", "neotree" } },
			},
			sections = {
				lualine_a = { { "mode", icon = "" } },
				lualine_b = { { "branch", icon = "" } },
				lualine_c = {
					{
						"diagnostics",
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = "󰝶 ",
						},
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{
						"filename",
						symbols = { modified = "  ", readonly = "", unnamed = "" },
					},
					-- {
					-- 	function()
					-- 		return require("nvim-navic").get_location()
					-- 	end,
					-- 	cond = function()
					-- 		return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
					-- 	end,
					-- 	color = { fg = colors.grey, bg = colors.none },
					-- },
				},
				lualine_x = {
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
						-- color = { fg = colors.green },
					},
					{ "diff" },
				},
				lualine_y = {
					{
						"progress",
					},
					{
						"location",
						-- color = { fg = colors.cyan, bg = colors.none },
					},
				},
				lualine_z = {
					function()
						return "  " .. os.date("%X")
					end,
				},
			},

			extensions = { "aerial", "lazy", "mason", "neo-tree", "trouble" },
		}
	end,
}
