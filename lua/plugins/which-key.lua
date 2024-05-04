return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeout = 300
	end,
	opts = {
		defaults = {
			mode = { "n", "v" },
			["<leader>b"] = { name = "+buffer" },
			["<leader>c"] = { name = "+code" }, -- Completions
			["<leader>e"] = { name = "+explorer" }, -- Neotree
			["<leader>f"] = { name = "+find" }, -- Telescope
			["<leader>h"] = { name = "+harpoon" }, -- Harpoon
			["<leader>x"] = { name = "+diagnostics" }, -- Trouble
			["<leader>q"] = { name = "+quitting" }, -- Quitting
			["<leader>w"] = { name = "+worksession" }, -- Autosession
			["<leader>s"] = { name = "+split" }, -- Splits
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}
