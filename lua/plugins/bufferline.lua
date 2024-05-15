return {
	"akinsho/bufferline.nvim",
	lazy = false,
	keys = {
		{ "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "toggle pin" },
		{ "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", desc = "delete non-pinned buffers" },
	},
	opts = {
		options = {
			indicator = { style = "underline" },
			color_icons = false,
			buffer_close_icon = "󰅖",
			separator_style = "thick",
			numbers = "none",
			themable = true,
			always_show_bufferline = true,
			offsets = {
				{
					filetype = "neo-tree",
					text = "EXPLORER",
					text_align = "left",
					separator = true,
				},
			},
		},
	},
}
