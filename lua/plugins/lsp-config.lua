return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
			local keymap = vim.keymap -- for conciseness
			keymap.set("n", "<leader>um", "<cmd>Mason<CR>", { desc = "show mason modal" })
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"cssls",
					"tailwindcss",
					"jsonls",
					"html",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.cssls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.html.setup({})
			local keymap = vim.keymap -- for conciseness
			keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show hover info" })
			keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
			keymap.set("n", "gr", vim.lsp.buf.references, { desc = "go to references" })
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "show code actions" })
		end,
	},
}
