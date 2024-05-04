vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- writing to files
keymap.set("n", "<Leader>ww", "<cmd>write<CR>", { noremap = true, silent = true, desc = "write current buffer" })
keymap.set("n", "<leader>wa", "<cmd>wall<cr>", { noremap = true, silent = true, desc = "write all buffers" })

-- map leader+y to copy to system clipboard in normal and visual mode
keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true, desc = "copy to clipboard" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" }) -- close current split window

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

-- copilot
keymap.set("n", "<leader>cd", "<cmd>Copilot disable<CR>", { desc = "disable copilot" })
keymap.set("n", "<leader>ce", "<cmd>Copilot enable<CR>", { desc = "enable copilot" })
keymap.set("n", "<leader>ct", "<cmd>Copilot toggle<CR>", { desc = "toggle copilot" })

-- quit
keymap.set("n", "<leader>qc", "<cmd>bd<cr>", { desc = "quit current buffer" })
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "quit all" })
