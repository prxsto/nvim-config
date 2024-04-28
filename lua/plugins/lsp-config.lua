return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      local keymap = vim.keymap -- for conciseness
      keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show hover info" })
      keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "show code actions" })
    end
  }
}
