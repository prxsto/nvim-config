return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
			local keymap = vim.keymap -- for conciseness
			keymap.set("n", "<leader>um", "<cmd>Mason<CR>", { desc = "show mason modal" })
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
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
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.tailwindcss.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			---@diagnostic disable-next-line: trailing-space

			local keymap = vim.keymap -- for conciseness
			keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show hover info" })
			keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
			keymap.set("n", "gr", vim.lsp.buf.references, { desc = "go to references" })
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "show code actions" })
		end,
	},
}
