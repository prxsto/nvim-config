vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- map leader+w to save current file in normal mode
keymap.set("n", "<Leader>w", "<cmd>write<CR>", { noremap = true, silent = true, desc = "write current buffer" })

-- map leader+y to copy to system clipboard in normal and visual mode
keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true, desc = "copy to clipboard" })

-- move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "go to left window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "go to lower window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "go to upper window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "go to right window", remap = true })

-- resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "increase window height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "decrease window height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "increase window width" })

-- lazy
keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "lazy" })

-- quit
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "quit all" })
