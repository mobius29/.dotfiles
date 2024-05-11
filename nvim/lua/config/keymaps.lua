-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local del = vim.keymap.del

del({ "i", "x", "n", "s" }, "<C-s>")

del("i", ",")
del("i", ".")
del("i", ";")

del("n", "<leader>gb")

del("n", "<leader>qq")

del("n", "<C-Up>")
del("n", "<C-Down>")
del("n", "<C-Left>")
del("n", "<C-Right>")

del("n", "<leader><space>")

local map = vim.keymap.set

-- Esc
map({ "i", "x", "n", "s" }, "<leader>f", "<esc>", { desc = "ESC" })

-- Szve
map({ "i", "x", "n", "s" }, "<leader>s", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Quit
map({ "i", "x", "n", "s" }, "<leader>q", "<cmd>q<cr><esc>", { desc = "Quit File" })
map({ "i", "x", "n", "s" }, "<leader>qa", "<cmd>qa<cr>", { desc = "Quit All" })
map({ "i", "x", "n", "s" }, "<leader>qq", "<cmd>q!<cr>", { desc = "Quit All" })

-- Resize window
map({ "i", "x", "n", "s" }, "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Move horizontal divider to up" })
map({ "i", "x", "n", "s" }, "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Move horizontal divider to down" })
map({ "i", "x", "n", "s" }, "<C-S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Move vertical divider to left" })
map({ "i", "x", "n", "s" }, "<C-S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Move vertical divider to right" })
