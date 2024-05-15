return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				indent_blankline = {
					enabled = true,
					scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
					colored_indent_levels = false,
				},
				treesitter = true,
				cmp = true,
				dashboard = true,
				neotree = true,
				gitsigns = true,
				mason = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				navic = {
					enabled = false,
					custom_bg = "NONE", -- "lualine" will set background to mantle
				},
				rainbow_delimiters = true,
				lsp_trouble = true,
				which_key = true,
			},
			custom_highlights = function(colors)
				return {
					NeoTreeNormal = { bg = colors.bg },
					NeoTreeNormalNC = { bg = colors.bg },
					NeoTreeEndOfBuffer = { bg = colors.bg },
				}
			end,
		})
	end,
}
