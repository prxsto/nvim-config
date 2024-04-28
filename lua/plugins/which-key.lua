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
            ["<leader>f"] = { name = "+file/find" }, -- Telescope
            ["<leader>g"] = { name = "+git" }, -- Lazygit
            ["<leader>h"] = { name = "+harpoon" }, -- Harpoon
            ["<leader>x"] = { name = "+diagnostics" }, -- Trouble
            ["<leader>l"] = { name = "+lazy" }, -- Lazy
            ["<leader>q"] = { name = "+quitting" }, -- Quitting
        },
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.register(opts.defaults)
    end,
}
